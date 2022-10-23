
---
layout: default
title: "Mintter Thoughts 2022-10-08"
created: 2022-10-08
published: false
---

![](/images/mintter-reservation.png)
Check in time from 2:00pm


Things I need to learn / read in preparation for Barcelona:
- Refresher on Augmenting Human Intellect
- Brief rundown on Murray Turoff's Delphi Method
- Paper on creativity that Gabo sent me

What is Mintter?
- Mintter is a tool for knowledge explorers to discover new frontiers, to connect and discuss in a peer-to-peer environment
	- The essence is togetherness, apart

Open design questions:
- What is the most basic workflow to go from discussion to knowledge bases?
	- **Sub-questions**
		- How does the interface enable knowledge to accrete?
		- What is the experience from the user's persective of engaging in these discussions?
		- How do productive discussions and conversations happen in the real world and how do you uniquely capture the essence of this in the digital space?
		- How can you make the interface feel like bouncing ideas back and forth?
		- 
- In a hypertext system, you can express the relation between texts with link types or with node types. What should we do?
	- **Sub-questions**
		- Why do you need to express the relation between texts?
		- Perhaps the "label" could be another text?
			- 
	- Both link and node types can quickly become disorganized, a mess sprawling all over the place. It has the same problem as spreadsheets if you don't have a machine-readable order then it's rather useless for the interface representation and only marginally useful to the user.
- Annotating stuff, tagging metadata for knowledge graphs
	- **Sub-questions**
		- Isn't this basically the same design direction as above?
- How extensions or plugins work as user experience
	- See: [Modding Staircase](/quick-ideas/cozyroom#81) 
		- You should always have access to one layer up on the staircase

Other things I can do to help:
- Help Mintter discover where it should be positioned, perhaps how to brand itself to be more appealing to knowledge-workers in the space?
- Design a website
- .mn domain could be nice for "mintter"??
	- or mintter.app
	- mintter.it

I feel like the best angles I can help (at least with the design questions outlined above) will be to explore in-particular the questions:
- What is the most basic workflow to go from discusssion to knowledge bases?
- How extensions or plugins can work as user experience

I can also do some work exploring website designs for Mintter...



What is the feeling you want the website to convey?

What is the essence of Mintter? and what you want it to be...

You want something that communicates the togetherness aspect of it, that you can bring people together, have shared discussions, that it can support these open discussion groups... I think that is really one of the most important things to communicate because it can't really be understood by just trying out a single-player demo on your own, it takes more effort to bring other people into trying something out. But if you have it in your mind that it is possible, that it might be a powerful tool for this kind of collaboration... I think that is important...

But also how do you communicate this experience? 

Are you gathered around a table?
Bouncing ideas / text back and forth between each other?

I dunno, I'll have to let it sit in the back of my mind for a little while, and maybe see what Gabo thinks when I get to Barcelona. Right now, I have some other things I must do and work on...

10:34 - 11:28

- Design decisions
	- List of contacts on the side
	- Copy id button
		- I think this should be removed?
			- Once you can reference snippets, just integrate directly with the default copy+paste functionality?
			- Could even have a browser extension that automatically links back to anything you copy
	- Modes for "New Document", "Reply", and "Review"
		- Unsure which is which, not clearly communicated through the interface
		- I think you should be able to edit anything anywhere and it simply creates a new version (especially if it is an already published article)
	- New document vs new draft button— what is the difference??
		- There's actually THREE buttons for starting a new document...
		- These should be one button, or potentially not even a button
			- If you enter this space, isn't it likely that you want to start writing? maybe that can be the default mode rather than having to 
	- Replies are linked references
		- There's something that feels a little bit awkward about this...
	- "Done" button
	- Clear bookmarks button
		- Why would I want to do that?
	- Back and forward buttons
		- I feel like a slightly unintuitive form of navigation, or at least they shouldn't be all the way on the right side...
	- List of documents (if you're really collaborating with a bunch of people then this will get quickly extremely messy!)

- Issues
	- Lots of EMBED ERRORs
	- Three different "New Document/Draft" buttons
	- Contacts is slightly confusing? how does it work? Is this just the people that I'm pulling from? What about more group-based?
	- The name 😂
	- Weird interface for inserting links
	- Not actually using standoff properties!?
		- ```{
                "type": "text",
                "value": "hello "
              },
              {
                "type": "link",
                "url": "https://test.com",
                "children": [
                  {
                    "type": "text",
                    "value": "world"
                  }
                ]
              },```
			- This is not how to store standoff properties? Don't you need to store the indexes? maybe it's stored differently in your database??
	- cmd+k opens quick switcher but doesn't close it also (I feel like it should be a toggle)



- Directions
	- Discussion -> knowledge bases
	- Relations / annotation
	- Extensions / plugin system
		- So I've thought extensively about plugin systems in the past, how might it work in this case? and how can it be integrated with the user-experience of the app?
		- I like the way obsidian handles it where there are built-in plugins that you can toggle on and off, it sort of starts to get you understanding that there are other possibilities...
		- Ideally, plugins should be able to affect as much of the app as possible, or perhaps people could even create entirely different clients??
		- What types of plugins do you imagine existing in this space?
			- Highlighting specific words, filters, etc.
			- Adding new interface elements / functionality
		- Obsidian just does their plugin system really well lol...















- Thoughts
	- Maybe bullets shouldn't get selected (`user-select: none`) when grabbing text? Not sure about this but it might look nicer
	- Cmd+k should be a toggle
	- Cmd+k should only open quick switcher in the window you're in, not in ALL windows like it does now
	- The time next to files in the inbox should be more fine-grained
		- just now (not completely necessary)
		- 1m ago
		- 59m ago
		- 1h ago
		- 23h ago
		- 1d ago (currently it says 24 hours ago first)
		- 6d ago
		- 1w ago (maybe, or just show date at this point)
	- Since writing is the first core step in the *feedback loop* of Mintter, perhaps when it opens it should just be a blank text-editor rather than opening up onto the whole list of things people have published around you
	- Currently there is a duplication of the title: the title is in the text but also in the header— maybe just keep one of these? or make the title in the text bigger?
	- "Delete document" -> "Hide document"
	- Could be nice to be able to see backlinks/replies/transclusions in the context of what they're linked to (in the spirit of the drawing I shared with dots on the side of the document indicating links/replies)
		- inbound links/transclusions -> document -> replies/outbound
			- I think of it from this perspective of seeing 
	- Shouldn't versions be sort of "part" of the same document interface-wise? It feels like they should be linked versions rather than separate documents as they appear to be right now
	- The "New Document", "Reply", "Edit", and "Review" modes are confusing, it should be more intuitive I think (if I edit a document that is published then it creates a new version of it?)
	- 

- Questions
	- 




The challenge with Mintter is that it's structured like a document, like a note-taking app -- but it's not a note-taking app. Or is it?

Gabo describes it as a tool for open conversations on the internet, he wants it to be a place where people can discuss and collaborate asynchronously and peer-to-peer. I feel like a lot of the issues with the interface stem from bringing the same types of mental models as exist inside of Roam and other note-taking tools.

But how can you make an interface that combines aspects of both conversational interfaces and document interfaces?

Conversational interfaces are:
- Threaded, possibly branching
- Starts with a main topic
- Little synthesis

Document interfaces:
- Focused on a central panel
- Usually written by one person, sometimes collaborative...
- Often inspired by sheets of paper
- Involves some level of synthesis of ideas

Perhaps, for example, it could be possible to create a kind of interface that merges these two modes: something with a conversational "log" of all changes, comments, and proposed changes, and then the document itself. Through the log you can explore people's opinions as well as possible variations. The big problem here is that the log may quickly become overly complex, leading to even more information overload...

This sort of aligns with the "browser as a journal" idea I had a while back



## Conceptualization of Mintter

- "open hypertext documents"
- "a mesh of networked messages build knowledge space"
- "CRDTs are foundational to local-first"

:: Mintter is a tool to enable discussions at the edge of knowledge

If you've heard of Engelbart, you know he's the inventor of the mouse— but at the heart of his passion was creating software that enabled knowledge groups.

### What are the pieces of Mintter?

- lightning network payments / micro-payments
- text-editor
- publishing
- comments / discussion
- 




## Ideas

The idea for the left sidebar was borne out of the idea that the conversation should hold the main focus, and not only should contain conversations about the document but also the document (and versions of) itself.

I think containing versions of itself is one of the most important things here. It will essentially act like git, allowing people to propose changes (or even groups of changes on a document)— but also there can be a number of document forking off so-to-speak. Maybe these documents can go in their own directions.





How can Mintter be framed?

And what should the website look like?






## Questions unsolved by demo

- where do backlinks go? (is it in the same section?)
- or what about comments on a particular section of text?
	- does this, should this appear in the same place as everything else?
- 





- backlinks
- what about a loading state?
- what about messages that are too long?
	- should that be one of the things you can do with filters?
- 





**What is Mintter?**

Mintter is a tool for enabling discussions at the edges of knowledge

**How does it do that?**

By giving you the tools to write and reference content, and to spur discussions around it— Mintter allows for discussion groups to form around thoughts and ideas.

**Why would someone choose Mintter over other discussion platforms?**

Other platforms do not give fine-grained addressability which can be useful when it comes to having conversations on the internet.























## What information do we need on the website?

- What is Mintter?
- Why would it be useful to me?
- What are the selling points?
	- Build your knowledge community
		- Knowledge community vs. Discussion group?
	- Solve complex problems— together
	- Local first
	- Direct connections to peers
	- Ownership of data / authorship
	- Hypertext 2.0
		- Everything fine-grained accessible / linked
		- Transclusions
		- "Hypertext frameworks closely resemble how we think as Humans— they help us associate wildly different concepts freely"
	- Open source, interoperable, self-hostable
	- Publish your content, and get paid!
	- Mintter API protocol


- What are we trying to accomplish with connections in the document, visible connections





- What is Mintter?
	- A peer-to-peer knowledge management and publishing software for open discussion groups. Write, cite, publish and discuss your biggest ideas—and publicly collaborate with your peers to improve them.
	- A tool for enabling conversations at the edge of knowledge
	- Sparking conversations at the edge of knowledge, spurring discussion groups to write, cite, publish and discuss your biggest ideas and collaborate with peers to improve them.
- Why?


**Open discussions** / conversations

- many comments
- in each comments there are references to other sections
- 







- internal links
- zooming
- how to interact with transclusions?


- should internal links look different?
	- if any links look different it should probably be external links because there is a well-defined paradigm for what those might look like, and then you can leave the assumption that all other links are interneal
		- should the interaction be different?
			- 
















