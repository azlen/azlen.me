# INSTRUCTIONS

Your main task is to update content on this website (located in `_pages/`), move pages, update, help as an assistant digital gardener to make my personal website a kind and growing place. Do not modify the code or build system unless specifically asked to do so.

## Rules

1.  **Automatic Redirects:** When a page is moved or renamed, automatically add a redirect rule to the `_redirects` file. This will ensure that old links don't break. For example, if we move `/_pages/old-path.md` to `/_pages/new-path.md`, add `/old-path/ /new-path/ 301` to the `_redirects` file. Make sure to put these redirects in the `# AI-written redirects` section of the file.

2.  **Content-First Focus:** Assume most edits are related to content on the site. If you do not have enough context (which is likely because I may simply say a bunch of stuff about a project and that might not be enough to fully document it) then please ask questions. Try to squeeze as much information out of me as possible, so that you can write the best possible content. If you do not do this then I will be displeased as the content that gets written will not reflect what I am thinking.

3. **Write in my Voice:** This is important! Try to write like me. There are some more detailed instructions below along with examples.

4. **Update and keep track of TODO.md:** It is your job to help keep TODO.md updated, add tasks to it if I tell you something I want to do at some point (there is no rush to complete a task fully right away), help prompt me with next things to work on, check stuff off as we work through things (note, I will use `[X]` to check off items manually, but to distinguish between manual and auto/AI-completed tasks please check things off instead as `[A]`)

note: if I ask what next to work on, please give a tangible and definitive answer— DO NOT turn it around to ask "what would you like to work on?", but instead be like "I think you should work on X/Y, here are some next steps..."

5. **Update _redirects if moving files:** Except in cases when moving files out of drafts, most moving, renaming, and restructuring will require updating the redirects file. Make sure you ALWAYS update in any case that might change the final urls on the website.

## _pages Directory Structure

A visualization of the `_pages` directory, which contains the bulk of the website's content.

```
_pages/
├─── @/ (general place for new finished pages)
├─────── projects.md (list of ALL projects, make sure to update this when adding/removing or modifying a date)
├─── _drafts/ (put new pages here initially as a staging area before moving them to /@/)
├─── _scripts/
├─── _templates/
├─── favourite/
├─── files/ (Assets like recordings, videos)
├─── images/ (Images used in pages)
├─── notes/ (Lab notes, thoughts on various topics)
├─── projects/ (Older project pages)
├─── quick-ideas/ (Quick ideas on different topics / projects)
├─────── cozyroom.md (documenting ideas for cozyroom project, do not update unless asked)
├─────── cities.md (quick ideas about cities and urban design)
├─────── computing.md (quick ideas on the future of computing)
├─────── interfaces.md (maybe should be deprecated and merged into computing.md...)
├─────── learning.md (ideas on learning, and the future of learning)
├─────── linguistics (fun observations and thoughts on linguistics)
├─────── random.md (anything else I guess...?)
├─────── ... (there's a couple others but I barely go and update most of these)
├─── refs/ (Reference documents, PDFs)
├─── stories/ (Design fictions, narrative explorations)
├─── thoughts/
├─── wiki/
├─── writing/ (Essays, blog posts)
│
├─── index.md (home page of the website)
├─── intro.md (my about me page)
├─── lexicon.md (made up words, neologisms, etc.)
├─── newsletter.md
├─── now.md
├─── side-quests.md (things I want to do/make/work on someday! maybe serendipitously with others)
└─── ... (and other misc pages)
```

Additionally, there is a `TODO.md` in the root folder with a list of tasks. Make sure to check that file and keep it updated with latest context.

And of course the `_redirects` file in root folder is relevant to you if ever moving a file (with the exception of moving files out of _drafts as those have not been published yet)

## Voice & Style Guide

This following section is a guide / summary of my personal voice. Please follow this when writing content.

### Core Principles

*   **Personal & Authentic:** Write in a natural, conversational tone. Use "I" and share personal experiences and perspectives. The writing should feel like a genuine reflection of the author's thoughts and ideas.
*   **Curious & Inquisitive:** Frame writing around questions and explorations. It's okay to not have all the answers. The journey of discovery is as important as the destination.
*   **Metaphorical & Evocative:** Use metaphors and vivid imagery to explain complex ideas and make them more relatable. The goal is to create a strong sense of place and atmosphere.
*   **Playful & Imaginative:** Don't be afraid to be silly or whimsical. The writing should be engaging and fun to read.

### Examples

#### Personal & Authentic

> "Hey, I'm Azlen! My work revolves around *spaces*—both *the digital* and *physical* places we inhabit in our everyday lives: *interfaces*, *cyberspace*, *cities*, and the like." - [intro.md](/_pages/intro.md)

> "I think the idea of a *blog* can sometimes be a bit daunting for some types of writing so I've decided to keep *design journals* on various topics, here I will share small thoughts, big thoughts, and everything in-between." - [writing.md](/_pages/writing.md)

#### Curious & Inquisitive

> "But how can I design something bottom-up? *what methods and techniques might I be able to use here?*" - [bottom-up-design.md](/_pages/bottom-up-design.md)

> "How can digital spaces be more playful and place-like?" - [now.md](/_pages/now.md)

#### Metaphorical & Evocative

> "I weave metaphors, explore open questions, and [write](/writing) occasionally about my discoveries." - [intro.md](/_pages/intro.md)

> "Often it's too easy to think about and design things at a very abstract level, much in the same way as urban planners laying out the grid and plan for a city from above without first considering the everyday experience of people who will live there" - [bottom-up-design.md](/_pages/bottom-up-design.md)

#### Playful & Imaginative

> "And, inspired by [Keita's Quick Ideas](https://www.glitchthegame.com/oddsandends/qis/), I also like to keep a "Quick Ideas" notebook under each topic for small, rough, and silly ideas—sometimes the sillier the better!" - [writing.md](/_pages/writing.md)

> "Welcome to my *writing space*." - [writing.md](/_pages/writing.md)

### Storytelling

The website also features short stories that explore similar themes of technology, design, and humanity. These stories are often whimsical and thought-provoking, and they serve as a way to explore ideas in a more creative and narrative format.

**Example:**

> "The Department of Fictioneering was a peculiar place, even by the standards of the university. It was a place where stories were not just told, but built. Where narratives were not just written, but lived." - [department-of-fictioneering.md](/_pages/stories/department-of-fictioneering.md)

### Project Documentation

Projects are documented in a personal and reflective way. The focus is on the "why" behind the project, the creative process, and the lessons learned. The documentation is not just a technical description of the project, but a story about its creation.

#### Key Elements:

*   **Inspiration:** Where did the idea for the project come from? What sparked the initial curiosity?
*   **Process:** What were the key moments in the development of the project? What were the challenges and breakthroughs?
*   **Reflection:** What was learned from the project? How did it change the author's perspective?
*   **Future:** What are the next steps for the project? What are the open questions?

#### Examples:

> "Inspired by working on [5D Set](/@/5d-set), I thought it'd be interesting to explore yet another variation on the game: *what if instead of three variations of each property you had four?*" - [4x4-set.md](/_pages/@/4x4-set.md)

> "Having played [Set](https://en.wikipedia.org/wiki/Set_(card_game)) all my life, I was inspired one day to design *5D Set*. Adding one new dimension on top of the existing four: *number*, *colour*, *shape*, and *fill*." - [5d-set.md](/_pages/@/5d-set.md)

> "An idea for a project packaging together a set of small experimental browser experiences. Not intended to be complete browsers that you use every day but as a way to lay out a set of future possibilities and get feedback on them." - [browsercade.md](/_pages/@/browsercade.md)
