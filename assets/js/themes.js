'use strict'

/* global localStorage */
/* global FileReader */
/* global DOMParser */

function Theme (client) {
  this.el = document.createElement('style')
  this.el.type = 'text/css'

  this.active = {}
  this.default = {
    background: '#000000',
    f_high: '#ffffff',
    f_med: '#ff5532',
    f_low: '#ffb000',
    f_inv: '#000000',
    b_high: '#111111',
    b_med: '#322e33',
    b_low: '#444444',
    b_inv: '#ffe053'
  }
  
  // Callbacks
  this.onLoad = () => {}

  this.install = (host = document.body) => {
    window.addEventListener('dragover', this.drag)
    window.addEventListener('drop', this.drop)
    host.appendChild(this.el)
  }

  this.start = () => {
    console.log('[Theme]', 'Starting..')
    if (isJson(localStorage.theme)) {
      const storage = JSON.parse(localStorage.theme)
      if (isValid(storage)) {
        console.log('[Theme]', 'Loading theme in localStorage..')
        this.load(storage)
        return
      }
    }
    // this.load(this.default)
  }

  this.open = () => {
    console.log('[Theme]', 'Open theme..')
    const input = document.createElement('input')
    input.type = 'file'
    input.onchange = (e) => {
      this.read(e.target.files[0], this.load)
    }
    input.click()
  }

  this.load = (data) => {
    const theme = this.parse(data)
    if (!isValid(theme)) { console.warn('Theme', 'Invalid format'); return }
    console.log('[Theme]', 'Loaded theme!')
    this.el.innerHTML = `:root { 
      --background: ${theme.background}; 
      --f_high: ${theme.f_high}; 
      --f_med: ${theme.f_med}; 
      --f_low: ${theme.f_low}; 
      --f_inv: ${theme.f_inv}; 
      --b_high: ${theme.b_high}; 
      --b_med: ${theme.b_med}; 
      --b_low: ${theme.b_low};
      --b_low: ${theme.f_high}33;
      --b_inv: ${theme.b_inv};
    }`
    localStorage.setItem('theme', JSON.stringify(theme))
    this.active = theme
    if (this.onLoad) {
      this.onLoad(data)
    }

    // determine (vaguely) whether or not theme is in dark mode
    let hexValueAsNumber = Number.parseInt(/^#(([0-9A-F]{3}){1,2})$/i.exec(theme.b_high)[1], 16)
    let maxHexValue = Number.parseInt("F".repeat(theme.b_high.length-1), 16)

    let midHexNormalized = Number.parseInt("9".repeat(theme.b_high.length-1), 16) / maxHexValue
    let hexValueNormalized = hexValueAsNumber / maxHexValue

    if(document.body) document.body.classList.remove('darkmode')

    if(hexValueNormalized < midHexNormalized) {
      if(document.body) {
        document.body.classList.add('darkmode')
      } else {
        window.addEventListener('DOMContentLoaded', () => { 
          document.body.classList.add('darkmode')
        })
      }
    }
  }

  this.reset = () => {
    this.load(this.default)
  }

  this.set = (key, val) => {
    if (!val) { return }
    const hex = (`${val}`.substr(0, 1) !== '#' ? '#' : '') + `${val}`
    if (!isColor(hex)) { console.warn('Theme', `${hex} is not a valid color.`); return }
    this.active[key] = hex
  }

  this.get = (key) => {
    return this.active[key]
  }

  this.parse = (any) => {
    if (isValid(any)) { return any }
    if (isJson(any)) { return JSON.parse(any) }
    if (isHtml(any)) { return extract(any) }
  }

  // Drag

  this.drag = (e) => {
    e.stopPropagation()
    e.preventDefault()
    e.dataTransfer.dropEffect = 'copy'
  }

  this.drop = (e) => {
    e.preventDefault()
    const file = e.dataTransfer.files[0]
    if (file.name.indexOf('.svg') > -1) {
      this.read(file, this.load)
    }
    e.stopPropagation()
  }

  this.read = (file, callback) => {
    const reader = new FileReader()
    reader.onload = (event) => {
      callback(event.target.result)
    }
    reader.readAsText(file, 'UTF-8')
  }

  // Helpers

  function extract (xml) {
    const svg = new DOMParser().parseFromString(xml, 'text/xml')
    try {
      return {
        background: svg.getElementById('background').getAttribute('fill'),
        f_high: svg.getElementById('f_high').getAttribute('fill'),
        f_med: svg.getElementById('f_med').getAttribute('fill'),
        f_low: svg.getElementById('f_low').getAttribute('fill'),
        f_inv: svg.getElementById('f_inv').getAttribute('fill'),
        b_high: svg.getElementById('b_high').getAttribute('fill'),
        b_med: svg.getElementById('b_med').getAttribute('fill'),
        b_low: svg.getElementById('b_low').getAttribute('fill'),
        b_inv: svg.getElementById('b_inv').getAttribute('fill')
      }
    } catch (err) {
      console.warn('Theme', 'Incomplete SVG Theme', err)
    }
  }

  function isValid (json) {
    if (!json) { return false }
    if (!json.background || !isColor(json.background)) { return false }
    if (!json.f_high || !isColor(json.f_high)) { return false }
    if (!json.f_med || !isColor(json.f_med)) { return false }
    if (!json.f_low || !isColor(json.f_low)) { return false }
    if (!json.f_inv || !isColor(json.f_inv)) { return false }
    if (!json.b_high || !isColor(json.b_high)) { return false }
    if (!json.b_med || !isColor(json.b_med)) { return false }
    if (!json.b_low || !isColor(json.b_low)) { return false }
    if (!json.b_inv || !isColor(json.b_inv)) { return false }
    return true
  }

  function isColor (hex) {
    return /^#([0-9A-F]{3}){1,2}$/i.test(hex)
  }

  function isJson (text) {
    try { JSON.parse(text); return true } catch (error) { return false }
  }

  function isHtml (text) {
    try { new DOMParser().parseFromString(text, 'text/xml'); return true } catch (error) { return false }
  }
}