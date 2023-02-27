---
layout: default
title: "Roam-clone in 10 minutes"
context: "Story"
created: 2021-11-28
---

A popular software these days is called Roam Research, which is a nested-bullet-based note-taking software. However the introduction of WormOS made much of existing software obsolete. Anything built within this new ecosystem is simply a magnitude times more powerful and flexible than anything that came before it. To build a clone of Roam inside WormOS is actually quite simple and in this step-by-step article, I'm going to be showing you how.

First of all, the data structure can be represented in one of two ways: a tree, or a nested list. So I'm going to start by creating a nested list data structure, but I'll define it as a *transformation* of the tree structure that is already built-in. The two structures of data contain the same information really, so this transformation tells the system that they are equivalent and interchangeable. *The benefit of this is that we will get to inherit any functions, representations, or transformations from both trees and lists.*

Once we have our data structure, we simply need to tell the computer how we want it to be laid out visually. To do this I'm going to drag the top-most list in and it should automatically create a set of interface elements arranged along an axis. If it's horizontal, just press the button at the root of the list to arrange it vertically. Now I'll just tell each block to render as its type and then become editable on click. We're just working with text for now but this will let us add in any sort of data into these blocks down the line.

Now I'll drag a new interface element to the left of this block. It should automatically snap into place not just on one block but along each block in the list. I'll tell this interface element to just be an icon representing a data type—and then connect the data in the block to this element. Normally the bullet points are all circles but I like this way better because it gives some context of what kind of data is contained within a block, plus this can double as button to transform a block from one type to another. For example if you want to automatically transcribe audio to text, or vice-versa generate text-to-speech audio for each of your blocks.

Then I will clone this list we're currently working with and connect it to the block's children slot. Now it will render any children underneath the block. I'll also add an empty interface spacer to the left to show the indent. Because the child blocks are clones of the parent, this will naturally be recursive: rendering the children's children underneath it and continuing to add extra spacers on each level.

