# Personal Website

> "Life is a constant struggle between having a personal website and being happy with your personal website"
>
> — Anonymous

I have long dreamed of having a place on the internet to call home; a place where I can share my work; a place where I can write. This is it. Welcome to the 34th iteration of Azlen's magnificent personal website, the I'm-actually-going-to-write-on-it-this-time-edition. My last website had too complex a build system that pulled data from both Notion and Roam which eventually led to my negligence to actually update the site with new information for over a year and a half (!). Not this time. This time is different, but of course, that's what I always say.

## What I like about my website

I tend to put a lot of thought into designing a website for myself, it is part of my identity, it is the digital side of me. As such I try to implement features that will make me enjoy my own website, or use it as a platform for experiments in designing internet spaces. So without further ado:

### Footnotes! (or rather, Rib-notes?)

I love being able to go on little tangents, or placing references on a page. I've been dreaming of putting footnotes on my website for time immemorial. Well, they're more like rib-notes because they don't go at the bottom of the document but rather appear just to the side of the text.

### It's themeable (and not just light and dark)

I adopted the [100 Rabbits-style theme support](https://github.com/hundredrabbits/Themes) inspired by [@oilandsugar](https://github.com/oilandsugar)'s [post](https://merveilles.town/web/statuses/106655931886300641) on the [merveilles mastodon community](https://merveilles.town). This means that the website can be themed with any colors you want simply by dragging an SVG file onto my website!

### Experimenting with a more personal writing style on the homepage

I want to invite you into my website as one invites someone into their home — because that's what it is, my digital home! So I've been experimenting with a friendlier, more conversational tone, And so far, I like it a lot!

### Human error codes

I thought it might be funny to [invent a new error code block](https://twitter.com/azlenelza/status/1424528012582678531) to add a little human element to errors, for example: "Error 703: Not Written Yet" might appear on certain pages that I've linked to but not yet written any content for.

## But it'd be cooler if...

Of course, it's not done yet. Never will be. These are some features I think would be pretty neat to have, if I get around to implementing them sometime:

- Bring back chladni patterns on internal links
- Some kind of indication of external links
- List of backlinks to a particular page to aid exploration
- Table of contents in left sidebar for longer posts and articles
- Automatic checking for dead or broken links
- Commenting functionality

## Installation (personal notes)

After you install ruby & jekyll:

```
bundle install
brew install pandoc
brew install jez/formulae/pandoc-sidenote
bundle add webrick
```

Oh and also you need to make sure _site is part of the deploy repository otherwise you'll get stuck in an infinite loop...