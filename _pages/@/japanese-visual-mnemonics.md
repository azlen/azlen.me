---
layout: default
title: "Japanese Visual Mnemonics"
context: "Experiment"
description: "A memory experiment, with mnemonic pegs and diffusion models"
created: 2024-01-03
---

An experiment using [Midjourney](https://www.midjourney.com) to generate visual mnemonics for learning/remembering words in Japanese.

![Layout of a bunch of visual mnemonics, even looking back at these a year later I can still remember most of the words each image is associated with](/images/japanese_visual_mnemonics.png)

The core idea here is to create a [mnemonic peg system](https://en.wikipedia.org/wiki/Mnemonic_peg_system) with every sound in Japanese, making three lists: people, actions, and clothing[^objects]. For every sound in each list I would associate with an English word that starts with similar phonetics (for example `su` → `superman`).

[^objects]: In retrospect I should have chosen "objects" as the third category, after coming across the [PAO system](https://artofmemory.com/blog/pao-system/) (person-action-object) I discovered that this is actually an existing and prevalent technique among memory champions

Then for any Japanese word, I take the first, second, and last sounds and map these to people, clothing, and actions. So the word `kurumaisu` becomes `kungfu panda` (ku), `rubber boot` (ru), `surfing` (su), ignoring any other syllables or sounds within the word. With those three words, I used GPT-3 to generate a description of visual imagery incorporating the meaning of each particular word which then I piped into Midjourney to generate a final image.

![An interface I made in Google Sheets which generates (with GPT) mnemonics which I can then paste into Midjourney](/images/japanese-visual-mnemonics-spreadsheet.png)

## Thoughts

- This technique was very effective and bi-directional, I could think of the word `wheelchair` or `kurumaisu` and be reminded of the image which would lead me to remember the meaning in either English or Japanese
- I chose first, second, and last sounds/syllables because it would be too much to encode every single syllable of every word into the image— and usually first, second and last are enough to remember the rest of the pronunciation
- While it was quite time consuming to go through the process of generating prompts, pasting, and waiting for output, eventually this whole process could be instantaneous and this could become quite an effective memory technique for learning a language
- While technically a peg system, you don't especially need to memorize every single word (though you'll have slightly faster recall if you do) as the words already are connected by sound to the japanese syllables

## Next Steps

- Make an object list to replace the list of clothing in the mnemonics
- I would like to automate and generate hundreds of these images, and turn it into an interface that anyone can use to memorize japanese words