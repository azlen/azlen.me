
const theme = new Theme();
theme.install(document.head);
theme.start();

let loadTheme = (name) => {
    fetch(`/themes/${name}.svg`).then((response) => {
        return response.text()
    }).then((svg) => {
        theme.load(svg)
    }).catch(err => {
        console.error(err)
    })
}

const angle = (p1, p2) => {
	var dy = p2.y - p1.y;
	var dx = p2.x - p1.x;
	var theta = Math.atan2(dy, dx);

	return theta;
}

const distance = (p1, p2) => {
	return Math.sqrt((p1.x-p2.x)*(p1.x-p2.x) + (p1.y-p2.y)*(p1.y-p2.y));
}

const click = function() {
    this.parentElement.classList.toggle('sidenote-toggled')
}

const hoverOver = function() {
    if(window.innerWidth <= 800) return

    document.body.classList.add('sidenote-hoverstate')
    this.parentElement.classList.add('sidenote-highlighted')
}

const hoverOut = function() {
    document.body.classList.remove('sidenote-hoverstate')
    this.parentElement.classList.remove('sidenote-highlighted')
}

let updateSidenoteConnectors = () => {
    let sidenotes = [].slice.call(document.querySelectorAll('.sidenote-wrapper'))

    sidenotes.forEach(parent => {
        let targetA = parent.querySelector('.sidenote-number')
        let targetB = parent.querySelector('.sidenote')

        targetA.onmouseenter = hoverOver
        targetA.onmouseleave = hoverOut
        targetB.onmouseenter = hoverOver
        targetB.onmouseleave = hoverOut
        
        targetA.onclick = click

        console.log(targetA, targetB)

        let pointA = (() => {
            let { x, y, width, height } = targetA.getBoundingClientRect()

            return {
                x: x + width,
                y: y + height / 2
            }
        })();

        let pointB = (() => {
            let { x, y } = targetB.getBoundingClientRect()

            return {
                x: x - 20,
                y: y + 10
            }
        })();

        // on mobile the sidenotes will not show up so we can hide the connector
        if(pointB.x < 0 || window.innerWidth <= 800) {
            let existingConnector = parent.querySelector('.connector')
            if(existingConnector) parent.removeChild(existingConnector)

            return
        }

        console.log(pointA, pointB)
        

        let connector = parent.querySelector('.connector') || document.createElement('div')

        connector.classList.add('connector')
        connector.style.setProperty('width', `${distance(pointA, pointB)}px`)
        connector.style.setProperty('transform', `rotate(${angle(pointA, pointB)}rad)`)
        console.log(`linear-gradient(to right, transparent ${Math.round(Math.min(Math.sqrt((pointB.x - pointA.x) / 1000) * 100, 100))}%, var(--f_med));`)
        connector.style.setProperty('background', `linear-gradient(to right, transparent ${Math.round(Math.min(Math.pow((pointB.x - pointA.x) / 900, 0.3) * 100, 100))}%, var(--f_med))`)

        targetA.appendChild(connector)
    })
}

document.fonts.ready.then(() => {
    updateSidenoteConnectors()
})

window.addEventListener('resize', () => {
    updateSidenoteConnectors()
})