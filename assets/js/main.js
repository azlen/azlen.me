
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