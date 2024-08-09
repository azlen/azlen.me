const { createCanvas, loadImage, registerFont } = require('canvas')
const { program } = require('commander')
const fs = require('fs')

registerFont('./assets/fonts/basteleur/bold.woff', { family: 'Basteleur' })
registerFont('./assets/fonts/fira/FiraCode-Medium.woff', { family: 'Fira Code' })
registerFont('./assets/fonts/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.woff', { family: 'ET Book' })

program
    .option('-t, --title <title>', 'The title of the page')
    .option('-c, --context <context>', 'Context marker of the page')
    .option('-d, --description <description>', 'The description of the page')
    // .option('-d, --date <date>', 'The publish date of the article')
    .option('-f, --filename <filename>', 'The ogimage filename')
    .parse(process.argv);

const options = program.opts();

const canvas = createCanvas(1200, 630);
const ctx = canvas.getContext('2d');

// Draw cat with lime helmet
loadImage('./logo-black-transparent.png').then((image) => {
    ctx.fillStyle = '#F6F3EF'
    ctx.fillRect(0, 0, canvas.width, canvas.height)
    ctx.drawImage(image, 1050, 480, 50, 50);

    ctx.textBaseline = "top";

    if(options.context !== '') {
        ctx.fillStyle = '#2D2D2D';
        ctx.font = '35px Fira Code'
        
        console.log(options.context)

        let textbox = wrapText(ctx, options.context, 87, 74, Infinity, 40)


        ctx.fillRect(73, 73, textbox.width + 10, textbox.height + 9)

        ctx.fillStyle = '#FFFFFF'
        wrapText(ctx, options.context, textbox.left, textbox.top, Infinity, 0)
    } else {
        // bar at the top to balance the space
        ctx.fillStyle = '#2D2D2D';
        ctx.fillRect(73, 73, 150, 8);
    }

    // Write title
    ctx.fillStyle = '#2D2D2D';
    ctx.font = '80px Basteleur';
    // ctx.font = '90px sans-serif';
    let wrapped_y = wrapText(ctx, options.title, 70, 160, 1100, 100).bottom;
    // ctx.fillText(options.title, 80, 80);

    if(options.description !== '') {
        ctx.font = '45px ET Book';
        ctx.fillStyle = '#2D2D2D99';
        wrapText(ctx, options.description, 73, wrapped_y, 1100, 50);
    }
    // ctx.fillRect(73, wrapped_y, 30, 30);

    ctx.font = '35px Fira Code';
    ctx.fillText('azlen.me', 73, 480);

    // Write date
    // ctx.textBaseline = "bottom";
    // ctx.font = '40px Basteleur';
    // ctx.fillStyle = '#EBAFA2';
    // ctx.fillText(options.date, 80, 555);

    const out = fs.createWriteStream(options.filename)
    const stream = canvas.createPNGStream()
    stream.pipe(out)
    out.on('finish', () => console.log('The PNG file was created.'))

})

function wrapText(context, text, x, y, maxWidth, lineHeight) {
    var words = (text || "").split(' ');
    var line = '';

    let bbox = {
        left: x,
        top: y,
        right: -Infinity,
        bottom: -Infinity,
    }

    let lastWidth = 0
    for (var n = 0; n < words.length; n++) {
        var testLine = line + words[n] + ' ';
        var metrics = context.measureText(testLine);
        var testWidth = metrics.width;
        if (testWidth > maxWidth && n > 0) {
            context.fillText(line, x, y);
            line = words[n] + ' ';
            y += lineHeight;
        } else {
            line = testLine;
        }
        bbox.right = Math.max(bbox.right, bbox.left + lastWidth)
        lastWidth = testWidth
    }

    context.fillText(line, x, y);

    bbox.bottom = y + lineHeight
    bbox.right = Math.max(bbox.right, bbox.left + lastWidth)

    bbox.width = bbox.right - bbox.left
    bbox.height = bbox.bottom - bbox.top

    return bbox
}