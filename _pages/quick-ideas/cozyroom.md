---
layout: default
title: "Cozyroom Quick Ideas"
subtitle: "Quick design ideas for Cozyroom"
created: 2021-08-15
---

*I have fallen behind in keeping this page updated, as such there are dozens of ideas that have yet to be documented here*

Ideas are listed in generally-reverse-chronological order, meaning that as I add new ideas to this page they will show up at the top. However if you want to start at the beginning, press the button below.

[Scroll to start ↓](#0)

[](){name="83"}

## #83: Exit transitions

When we leave a friend's house in physical space there is a transition that we go through: gathering up our belongings, putting our shoes on, stepping out the door, saying goodbye, however in digital space we often have sharp cuts rather than smooth transitions (see [interfaces #4](/quick-ideas/interfaces#4))

I want it to feel good both to enter and exit a space in cozyroom. This is one aspect that all other meeting and spatial software fails horribly at: when I click the button to leave a zoom call, there is no transition but rather a jarringly sudden switch from being "in" the meeting to being "out" of the meeting.

[](){name="82"}

## #82: Programming Blocks

I've been thinking for a while about how to create a kind of modding experience

[](){name="81"}

## #81: Modding Staircase

One of the biggest ideas I'd been trying to explore with cozyroom 2.0 is the idea of creating a modding / plugin system

After extensive research and thinking about modding I began to think of modding as a sort of spectrum — or perhaps a staircase might be a better metaphor!

- **First step**: Being able to modify and customize the world around you, in cozyroom you can *already* do this by dragging objects into the space and arranging them however you like. Even better if you're able to share spaces and creations with others.
- **Second step**: Using other people's mods / plugins / interactive objects. Simply by using other people's creations opens your eyes to the possibility that you can make your own
- **Third step**: Starting to create your own small mods. Creating your own custom pointers, cosmetics, interactive objects, etc.
- **Fourth step**: More complex modding, things that bend the physics of your world in new ways you had not expected. Possibly introducing entirely new forms of gameplay.
- **Fifth step**: Complete overhaul. The software becomes merely the engine on which you craft an entirely new game or experience.

![](/images/modding-staircase.jpg){.invertable}

Installing and using other people's mods tends to be relatively easy, but the step between the using and actually creating your own plugins is often so high that it requires a bit of climbing. This is the case with games, and this is the case with software[^realworld].

[^realworld]: and it is likely the case with any other medium that has an analogue to the idea of modding

The distance between the second and third step is tied to two factors: effort and learning curve. If you bring either or both of these factors down then you've likely started to make a system that is very friendly to end-user programming. Lowering the third step is the goal of all no-code tools.

The fourth and fifth steps take effort and are rarely walked but powerful incubators of ideas. Some of the most popular game genres today have emerged from mods that subvert their original game in order to change the rules and gameplay mechanics in new ways[^subvert].

[^subvert]: *in rare cases*, some people are able to skip from the first to the fourth step by realizing that creating new experiences can sometimes be just about setting new social rules rather than codifying technical ones. For this to occur, the world must be flexible enough already to support a wide range of use-cases, allowing new games to emerge from within the overall game structure. Take minecraft spleef arenas or hunger games for example, you can absolutely set up a game of hunger games among a group of friends without any mods or technical knowledge.

*My* goal in exploring a plugin system for cozyroom is to both lower the third step—lowering the learning curve for anyone to be able to experiment and dabble with more advanced customizations, creating interactive objects, etc.— and also to create a powerful sandbox and spatial environment where people can experiment with creating new experiences altogether.

If new genres like MOBAs and Battle Royales can emerge from video game modding communities, just imagine what kinds of new genres of software might be discovered if only we made software moddable.

<a name="reflection"></a>
<a name="interlude"></a>

## Interlude: Reflection

I haven't felt like working on cozyroom lately, why?

- Intimidated by connecting together different backend services
- Not sure if I'm barking up the wrong tree w/ latest design ideas
- Bored of working on same thing for too long
- Not enough excitement / motivation
- No longer so excited about programming
- Simply so many tasks to get done
- Ambivalence on whether or not to seek funding
- The pen tool...

The "big ideas" that I was exploring (and was motivated by) a couple months ago — they seem a little far-fetched... I'm not sure if they are really good ideas anymore.

It is essential that the primitives of cozyroom all work really well together, and if I feel like they don't then there's a big problem.

The toolbar has probably been one of the biggest things holding me back. I put a lot of effort into it and yet I still feel dissatisfied.

![](/images/cozy-toolbars.png){.invertable}

Fundamentally, the biggest problem with the toolbar is the pen tool — which introduces many layers of complexity, most key of which is that it is unlike any other tool and that drawing is more like a "mode" than a "tool"

**"BIG IDEAS":**

- Toolbar + pen tool
- Cozy mode and creative mode
- Infinite canvas vs. vertical scroll
- Cards = sub-spaces

![](/images/cozy-modes.png){.invertable}

![](/images/cozy-infinite-canvas-vs-vertical-scroll.png){.invertable}

![](/images/cozy-cards-drawing.png){.invertable}

I think the problem is that I took all these "big ideas" and tried to lump them all together at once without letting them evolve naturally on their own. Just like jamming two puzzle pieces together that shouldn't go together, sometimes you can delude yourself for a moment that they do until you start noticing the inconsistencies.

The clear solution to me right now is to scrap my current conception of creative mode, pen tool, cards, pocket dimensions, vertical canvases, etc.

<!--- Perhaps cards may have a place in cozyroom but they will no longer be a core "primitive"
- Cards are no longer tied to the idea of "pocket dimensions"
- Creative mode will not be needed for now because it was tied up with my ideas of pocket dimensions and vertical canvases
- ...-->

If they really are pieces of this puzzle then they will surely find a more natural fit sometime down the road. And if not, then perhaps I may find that scrapping these pieces for now might open my eyes to all kinds of new pieces of the puzzle that I had blinded myself to before.

<a name="80"></a>

## #80: Finger Control

This is a little silly but what if you had a hand and could control each of its fingers?

![](/images/cozy-finger-control-1.png){.invertable}

![](/images/cozy-finger-control-2.png){.invertable}

![](/images/cozy-finger-control-3.png){.invertable}

It would be interesting to experiment with something like this, perhaps it could make interactions more immersive? intuitive?

What would different hand gestures mean?

Probably wouldn't make sense to incorporate into cozyroom but it would be fun to play around with sometime!

<a name="79"></a>

## #79: AI Objects

What if you could type in anything an an AI will automatically generate an object for you with that text?

![](/images/cozy-ai-pink-high-chair.png){.invertable}

![](/images/cozy-ai-avocado-chair.png){.invertable}

That would be quite interesting, I wonder how this would change the whole dynamics of interaction...

Maybe you can longpress anywhere on the background, type in the kind of object you want, press enter, and voila!


<a name="78"></a>

## #78: Wheel of conversation

![](/images/cozy-conversation-wheel.png){.invertable}

Spin the wheel and it gives you an interesting idea or topic to talk about :)

<a name="77"></a>

## #77: Indicators

I want to be able to see where people are. Who is up from me and who is down from me?[^vertical]

[^vertical]: If I'm in a vertical space. I'm not sure if I've written about this yet but the idea would be that if you "enter" a card then you are in a new room but it only scrolls vertically — as a sort of brainstorming space<br><br>This would also enable you to be able to easily publish any of these vertical spaces as a webpage...

![](/images/cozy-up-down-indicators.png){.invertable}

And when someone is talking (if we can hear each other in the space) then they can pop up bigger!

![](/images/cozy-indicator-popout.png){.invertable}

<a name="76"></a>

## #76: Flying carpet

It would be funny when you enter a room / card if you are on a little floating magic carpet...

You can see each other on the carpet no matter how far you scroll away from each other, but you can also drag yourself off the carpet and into the space to regain spatial positioning.

![](/images/cozy-magic-carpet.png){.invertable}

<a name="75"></a>

## #75: Draw vs. Move

I want to be able to both draw from and move a deck (and for these both to be very immediate / top-level interactions), but how can they both be tied to dragging?

One solution is to say that any drag from the bottom half of the deck moves it, and any drag from the top half draws a card — this can be anticipated by a card-tilt of the top card on hover.

![](/images/cozy-deck-half-drag.png){.invertable}

<a name="74"></a>

## #74: No Names

Having everyone's names on screen at once leads to some visual noise...

I don't know if its really necessary if I already know who someone is (although I mostly tune the nametags out)

Instead maybe it shows the name when you click or hover on others, or when they join the room or move into your field of view. And then the name tag may fade out after a bit (as you'll probably be tuning it out anyway so it doesn't matter anymore)

<a name="73"></a>

## #73: Single Color

To simplify the pen tool, what if you only have one color: the color of your cozy? that way you can always tell which lines have been drawn by who

In what circumstances might you want to use a color that is not your own?

I feel like a single color might fit 90 - 95% of use cases, it's possibly more important to be able to change the pen width than it is to change the pen color...

Wait... now that I think about it I realize I'm part of that 5% use case where having multiple colors would be really really helpful to me haha

<a name="72"></a>

## #72: Cozy Color Wheel

If I'm showing the pen tool in this "pointer switcher" with a color wheel around it for changing the color of the pen, then perhaps the default pointer tool could also have a color picker that lets you change the color of your cozy!

![](/images/cozy-pointer-switcher-figma.png)

Plus it might let me fit a few emotes into the UI — I'm not entirely sure this is a good place for them (ideally emotes would be more immediate rather than being something you have to go click on to the side) but it could certainly be helpful to have emotes, particularly a "wave" which could be used both as a greeting and a farewell...

<a name="71"></a>

## #71: Pointer Switcher

I don't like that the pen tool and card/text are very different interaction-wise (see toolbar: [#45](#45), [#51](#51), [#58](#58)) but are layed out next to each other in the same toolbar

The card/text you can drag into the space, whereas the pen tool is essentially an entire mode!

![](/images/cozy-pointer-switcher.png){.invertable}

So what if instead, the "toolbar" is just a "pointer switcher" which would let me make (or let others make as plugins) lots of fun different pointers (see [#26](#26), [#27](#27), [#28](#28))

<a name="70"></a>

## #70: Card shapes

Also there's no reason to restrict the size, or even shape of cards

In fact it's not completely necessary that all cards in a single deck have the same shape. They just have to look roughly the same shape until you flip them over and "reveal" what they actually look like...

![](/images/cozy-card-shapes.png){.invertable}

<a name="69"></a>

## #69: Card backs

Thinking about how cards can break beyond the physical medium... ([see #66](#66))

Because it can be different each time, the card backs in a single deck don't have to be all the same!

You could have generative-art algorithm generate a card back each time you draw a card, so despite having different backs it doesn't give any indication of what card might be underneath...

<a name="68"></a>

## #68: Facepaint

In pen mode I wish I could draw on my cozy itself

Maybe if your pen goes over/around your cozy, (s)he looks straight forward and the pen size becomes a bit smaller, letting you draw around your face or around your body.

![](/images/cozyroom-personal-space.png){.invertable}

![](/images/cozyroom-facepaint-examples.png){.invertable}

If you draw directly on your face, maybe it will follow your face as you look around and get cropped by the edge of your body. Whereas if you draw outside your body maybe the drawing doesn't follow your face around?

![](/images/cozyroom-facepaint-examples-2.png){.invertable}

<a name="67"></a>

## #67: Check it out!

If a page name on cozy garden is already taken, show a little message asking if you want to check out what's on that page. Maybe if someone else comes up with the same creative title for something you might be curious to see what they've put up there!

![](/images/cozy-garden-check-it-out.png){.invertable}

<a name="66"></a>

## #66: Card Feel

How can you create a deck of cards in digital space?

It's very difficult because there's simply so many things you can do with cards! they are a very flexible medium (just like paper)

Rather I've found that to get to this card-feel you can incorporate digital aspects of cards that would be impossible in physical space — like particles, sound effectts, animations, etc.

This is how games like Hearthstone and other games try to create that card-feel and make the experience more engaging (it' be rather dull if they tried to create a completely accurate simulation of playing cards, right?)

[![How can you break out of the medium?](/images/joker.webp)](https://madebyabvh.tumblr.com/post/101591449377/playing-cards){.no-link-style}

If I incorporate cards into cozyroom, how can the affordances of cards be digitally augmented? Some ideas:

- Hyperlinks / interactivity
- Space beyond card — that you can enter into as a brainstorming space / pocket dimension...
- Spaced repetition
- Automatic sorting
- Animations on the cards
- Resizing




<a name="65"></a>

## #65: Cozy Garden

`https://cozy.garden`

I couldn't resist. What will it be?

I think I might make cozy garden into a mini publishing platform for cozyroom

You can publish spaces as a website that people can visit (e.g. maybe you have a brainstorm/writing session inside of cozyroom and want to share the link with some friends?)


<a name="64"></a>

## #64: Metaballs

Imagine if cozies were actually metaballs and merged when they got close to one another...

![](/images/cozy-metaballs.png){.invertable}

Not a core feature for sure but could be a fun plugin!

<a name="63"></a>

## #63: Backpack

It'd be nice sometimes to have a little sidebar / clipboard with things I want to move from one place to another, or am unsure where exactly to put yet

Conceptually I might think of this as a:

- `Backpack`: carry from one place to another
- `Hand`: like a hand of cards, it is private only you can see what's there
- `Inventory`: similar to an "inventory" in video games of all the things you've picked up

<a name="62"></a>

## #62: Search shelf

I'm thinking of making a multipurpose search button

It lets you find objects, plugins and maybe even text you've written within your spaces

It would be nice if the UI for the results looked a bit like a bookshelf, sort of extending the physical metaphors put forth by the other tools. The library / bookshelf is where you go to find certain ideas, objects, or other things to add to your space[^objectlibrary]

[^objectlibrary]: You know, a common term for an object panel / selector in tools like this is the "object library"— so this bookshelf metaphor is really a natural fit here

![](/images/cozy-object-library.png){.invertable}

Also, if I search for a "piano" in the search box, it would be kind of neat if there was a section at the bottom for "other instruments"— that way there's a little discovery mechanism built in to find things in a similar space to what you are looking for[^biggestproblem].

[^biggestprolem]: One of the biggest problems with search interfaces for objects, plugins, etc. (particularly I'm thinking about VSCode's plugin search here) is that it's incredibly hard to discover what might be relevant or interesting. There might be hundreds of fascinating VSCode plugins that I will simply never hear about because there's no good discovery mechanism besides online listicles detailing the "TOP 10 VSCODE PLUGINS YOU CAN'T LIVE WITHOUT"

<a name="61"></a>

## #61: Flying cozies

Another idea for the cursor in creative mode is that you keep your cozy but it becomes part of your cursor

![](/images/cozy-part-of-cursor.png)

I was trying to think of other ways to give the cursor a "face" or a bit more personality but none of the ideas felt very good

![](/images/cozy-alternate-cursor-ideas.png)

But I have to say, pacman cursor would be funny![^wakkawakka]

[^wakkawakka]: Bonus points if everyone goes around saying "wakka wakka wakka"

<a name="60"></a>

## #60: Settings icon

I was thinking it would be funny if the settings icon looked like a face instead of a gear

![](/images/cozy-settings-icon-face.png){.invertable}

Two dials and a slider! but I don't think will get interpreted well as a settings button...

![](/images/cozy-settings-button-face.png)

It is rather cute though!

<a name="59"></a>

## #59: Shadow drag

Since I switched from dragging the cozy directly to dragging the target position which the cozy will then walk ([and squish](#1)) towards that new position, I have wondered how might I be able to represent this target.

I was thinking something like an "X" that marks where you're moving to, kind of like clicking to move around in Runescape. Or maybe some round ripple that indicates where you're moving to?

But the funniest idea I came up with is that when you drag you cozy you instead drag your shadow ([see #11](#11)), and then your cozy, having lost its shadow, tries quickly to recover it!

<!-- TODO: switch to using includes here -->

<iframe width="560" height="315" src="https://www.youtube.com/embed/NqmWRagbgTA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<a name="58"></a>

## #58: Ferris wheel menu

I've been trying to avoid menus as much as possible in the toolbar, I want everything to be able to accessed immediately rather than delving into submenus and subsubmenus and subsubsubmenus...

But pen tools are an infinite rabbit hole and the interface is already getting a little bit crowded!

So I think I'll allow for a single menu here that I call the "ferris wheel menu" because it spins out from the tip of the pen. Here I can place a button to switch into vanishing-ink mode, or any other ideas or pen-modes I think of in the future.

![](/images/cozy-ferris-wheel-menu.jpg)

<a name="57"></a>

## #57: Disappearing ink!

It would be fun to have a vanishing-ink mode on the pen tol so that you can use the pen as a conversational / gestural tool without making permanent marks...

<a name="56"></a>

## #56: Locked in conversation

Last night the phrase "locked in conversation" popped into my head as I was falling asleep and I wrote it down thinking that it'd be an nice metaphor for private conversations / whispering to another person in a way that only they can hear

![](/images/cozy-locked-in-conversation.png)

I know I've come across situations in calls before where I want to say something that only one other person hears

Particularly when I was playing board games in figma with my friends, sometimes you need to ask a particular person a question without revealing information publicly (because that would mess up the game!)

<a name="55"></a>

## #55: Globe

Show a little globe icon in the path for public rooms

![](/images/cozy-path-globe.png){.invertable}

And a little house for private rooms?

![](/images/cozy-path-home.png){.invertable}

<a name="54"></a>

## #54: Icon swoosh

The icons I have been thinking about to represent the "cozy" and "creative" modes are both centered around a kind of circle motif:

![](/images/cozy-creative-icons.png){.invertable}

Cozy mode has three dots gathered in a circle with each other, and creative mode has these two dots spinning around with a trail behind to indicate motion.

When selecting modes in a dropdown menu, to avoid the same icon appearing twice, either of these icons could spin themselves into a kind of donut shape, and then spin back once you've chosen / closed the menu.

![](/images/cozy-mode-dropdown.png){.invertable}

*It's hard to describe this in words, it would work a lot better as a little animation!*

<a name="53"></a>

## #53: Magic select

Inspired by [Kinopio](https://kinopio.club), what if when you drag on the background you draw a path of selection and can wave this around to select multiple objects at once?

Although dragging on the background on mobile, it makes more sense that the intention would be to "look" further in a particular direction rather than selecting objects. Which I think is fine because the smaller your screen, the less necessary it will be to select many things simultaneously.

<a name="52"></a>

## #52: Creative mode

Sometimes I want to brainstorm together and other times I want to gather together...

Brainstorming / design is better in tools like figma where you can see each other's cursors, maybe there should be a mouse mode in cozyroom?

![](/images/cozymind-cursors.png)

I made these [talking cursors](https://twitter.com/azlenelza/status/1320452429939413001) a while back and they'd be perfect for a cursor mode that still lets you see who's talking!

![](/images/cozy-plus-mouse.png){.invertable}

I think I'll call these modes "*cozy mode*" and "*creative mode*"

Harkening back to the creative mode in Minecraft that frees you from the normal constraints of a body and lets you fly around everywhere

<a name="51"></a>

## #51: Eraser!

I almost forgot about the eraser, when you have a pen tool you also need a way to erase things!

Here are a couple ideas keeping with the skeuomorphic design:

![](/images/cozy-eraser.jpg)

I was thinking it'd be funny to put the eraser on the back of the pen itself, and then "flip" the pen around to erase— but if I did this then there wouldn't be enough space for the thickness slider.

And then what about the eraser thickness?

I think option #1 works best, and then when the eraser is selected it can switch places with the pen and have its own thickness slider!

<a name="50"></a>

## #50: Hotkey indicators

In same vein as [idea #31](#31), I wonder if the interface can naturally teach you key commands by simply putting letters on each of the tools indicating which key to press to select that tool?

![](/images/cozy-hotkey-indicators.jpg)


<a name="49"></a>

## #49: Sonification

If the pen width slider makes clicky sounds as you drag it, that makes me feel that other interface elements could have their own sounds attached!

- `pen`: scribble sound
- `pen width`: *click click click*
- `eraser`: squeaky / rubbing against paper sound
- `text`: single typewriter key being pressed down?
- `card`: card sliding off deck

And then if these tools all have their own sound effects, and the pen-thickness makes clickety click sounds, then what about the `color slider`?

Is there possibly some way to translate the currently selected color into sound?

That would be pretty neat— and maybe could help someone who's colorblind be able to distinguish between different colors because they'll be able to *hear* the difference.

<a name="48"></a>

## #48: Thickness slider

Do you remember those little clicky erasers where you can keep sliding the eraser out as it runs down?

![I have to admit, I haven't seen one of these things since elementary school](/images/clicky-eraser.png)

Thinking about these just gave me an idea— what if you can control the pen thickness with a slider on the pen itself!?

![Notice how the pen also gets thicker to clearly indicate which setting it is on](/images/cozy-pen-thickness.jpg)

It would also be fun if as you slide the pen-thickness it makes a *click* *click* *click* sound to give that tactile feel

<a name="47"></a>

## #47: Palette

If I have this in-context color picker I also want a way to save colors as a palette 

![](/images/cozy-palette.jpg)

Here are a few different variations of the idea. Personally I like #2 because it shows the palette in context of the color line, but also #1 is more understandable and straightforward as a color palette.

<a name="46"></a>

## #46: In-context color picker

I really don't like when tools give a limited set of colors on their pen tools, it feels constraining to lose the agency of picking my own colors

![](/images/figjam-limited-palette.png)

I've been thinking for a while how to choose color for the pen tool nicely

Just realized that if I have a toolbar on the side then the color can be a natural extension of the toolbar and the pen!

![](/images/cozy-toolbar-color-picker.jpg)

And then if you drag right moving along the color bar, it will make the color darker or lighter— effectively creating a 2d selection space in a 1d interface element. This is a sort of simplified reincarnation of my own [multidimensional color picker](https://twitter.com/azlenelza/status/1371961905154252801) where I can explore 3d color space in only two dimensions.

<a name="45"></a>

## #45: Skeuomorphic

![](/images/cozy-toolbar-sketch.png){.invertable}

I like when you can see more physical representations of tools in a toolbar

![](/images/cozy-toolbar-v1.png)

Feels nicer than [idea #12](#12) where I can just see icons and open up menus

<a name="44"></a>

## #44: What if rooms = cards

Had this crazy idea the other day to treat different rooms and spaces as cards that you can stack, sort, flip, and drag around. Somehow this feels like it solves 90% of my big design questions around cozyroom.

![](/images/cozy-cards-no-toolbar.png)

Key ideas:

- Cards can be arranged in the space, or put into decks, drawn, shuffled, etc.
- Each card can be opened up into its own space (the card is like a door)
- The space a card opens up into by default scrolls vertically down and not horizontally
- Text, drawings, and images can be placed on the face of the card

It also opens up many different new use cases, sort of pushing cozyroom to a point where it can't be put into any one particular category.

<a name="43"></a>

## #43: Blinking?

What if cozy blinks occasionally?

![](/images/cozy-blink.png){.invertable}

If cozy can blink, then maybe if I am AFK or quiet for too long, I want my cozy to close his eyes and fall asleep

Just like I can tell that someone is muted by their mouth disappearing, I will be able to tell if someone is inactive or *not entirely there*

<a name="42"></a>

## #42: Easter eggs 

There must be lots of easter eggs to discover in cozyroom

But what if one of them is that you can become an actual easter egg?

![](/images/cozy-easter-egg.png){.invertable}

<a name="40"></a>

## #41: Stomach

Expanding on [idea #33](#33), what if all the objects you "eat" go into a special place, the "stomach" room

So if you delete something you didn't mean to you can always go back and find it in there

## #40: Cozy caterpillar

What if I could "follow" a cozy— and then a chain of people following each other creates a cozy caterpillar

![](/images/cozy-caterpillar.png){.invertable}

Or if the front person follows the person at the back then you get an infinite walking circle of everyone following each other

![](/images/cozy-superfollow.png){.invertable}

<a name="39"></a>

## #39: Interactive objects 

Some objects are interactive, or maybe there could be certain interactivity components that you can attach to any object. For example an object:

- that makes sound
- that grows, changes, or animates over time
- that only you can see
- that you can project onto (screenshare)


<a name="38"></a>

## #38: Cozy hands 

Perhaps the pointer can be evolved to be more expressive

I think we can measure the expressiveness of your digital avatar in cozyroom by how complex you can make a secret handshake...

Hands could be


<a name="37"></a>

## #37: Scale by zoom 

What if new objects are scaled depending on your zoom level

Like if I create a chess set when I'm zoomed out all the way and then zoom back in, my cozy will be about the size of an individual square on the board

![](/images/cozy-zoom-scale.png){.invertable}

Or... even siller, what if your own scale depended on your zoom level?

You could have big cozies, small cozies, everyone can be a different size

![](/images/cozy-zoom-scale-self.png){.invertable}


<a name="36"></a>

## #36: The Bazaar 

I want a marketplace for cozy rooms and custom plugins where people can share and remix each other's creations

And potentially make a profit off it! I'd love to be able to support the community in making cool stuff. One idea is to take a model similar to [Skillshare](https://www.skillshare.com/)

![](/images/cozy-marketplace.png){.invertable}

<a name="35"></a>

## #35: Spinscale 

There's currently no way to make objects bigger or smaller, it's something that people always want to be able to do but can't

What if while dragging an object I can press left and right arrow keys to rotate, or up and down to scale, or use the equivalent keys on WASD

![](/images/cozy-spin-scale.png){.invertable}

![](/images/cozy-spin-scale-2.png){.invertable}

Could be useful way to have fine-grained control of scale / rotation on desktop

Might be easier on mobile because you can just pinch to both rotate and scale


<a name="34"></a>

## #34: Links are too big... 

Links take up too much space if they are represented as cards with preview image, description and everything—and that might lead to a cluttered space

Maybe by default links should just be dots / favicons (perhaps with title below?)

And then I can see a preview on hover...

![](/images/cozy-link-preview.png){.invertable}

It makes it much nicer, and then you can create rabbitholes of websites throughout the space by making paths of links!

![](/images/cozy-link-paths.png){.invertable}


<a name="33"></a>

## #33: Trashy mouth 

How do you get rid of items?[^currently]

[^currently]: Currently the process for getting rid of an object is right-clicking and then pressing the small delete button right below the larger buttons for rotating, flipping, locking, etc.

What if cozy's mouth is a trashcan!

![](/images/cozy-trash-mouth.png){.invertable}

<a name="32"></a>

## #32: Files 

I want to be able to share and place any files throughout the space no matter what extension they are

There should be a default "file object" when you drag files into the space that you can drag around, download, and (if supported) preview

![](/images/cozy-files.png){.invertable}


<a name="31"></a>

## #31: Key commands 

The interface could naturally teach you certain key commands, like pressing "m" to mute or unmute yourself. Just show a little "m" in the corner

![](/images/cozy-key-commands.png){.invertable}

*Thanks to [Ziyad](https://twitter.com/ziyadbasheer) for this idea!*


<a name="30"></a>

## #30: Different fonts 

To make speech bubbles unique to each person, what if everyone talked in their own font so that you can visually distinguish each message.

![](/images/cozy-different-fonts.png){.invertable}

This could be a fun idea for a messaging platform even if it never becomes a thing in cozyroom.

*Inspired by conversation with [David Holz](https://twitter.com/DavidSHolz)*


<a name="29"></a>

## #29: Footsteps 

![](/images/cozy-footsteps.png){.invertable}


<a name="28"></a>

## #28: Custom playful pointers 

And custom pointers can be used to have fun!

Imagine having lightsaber duels, or role-playing a D&D campaign inside Cozyroom—the possibilities are endless

![](/images/cozy-d&d-lightsabers.png)

*Even better if it comes with sound effects*

`vvwWwoOOmvvwwOow ktshshh`


<a name="27"></a>

## #27: Become a chair 

An even crazier pointer idea—what about a pointer which lets you become an object? 

This would be so fun, *why sit on chairs when you can just become the chair?*

![](/images/cozy-transmogrify-pointer.png)

It opens up so many possibilities, you could even drag in and image of your favourite video game character and then become that object and start moving around as them


<a name="26"></a>

## #26: Ventriloquist pointer 

This one might be a little silly

Perhaps there could be a ventriloquist pointer which lets you speak to people further away without actually moving yourself there

*"hey you two, come join this conversation!"*

![](/images/cozy-ventriloquist-pointer.png)


<a name="25"></a>

## #25: Drawing pointer 

Often I want to be able to draw a diagram or write something not in a textbox during a conversation, I'd like to be able to pick up a pen tool and start drawing in the space.

![](/images/cozy-draw-pointer.png)


<a name="24"></a>

## #24: Camera pointer 

Sometimes I want to take a picture of the space. I guess it's not too hard to take a screenshot but it would be fun if you had a camera tool to take pictures more naturally and capture moments in the space together.

![](/images/cozy-camera-pointer.png)


<a name="23"></a>

## #23: World map 

If you jump *really* high maybe you get to see a world map and can choose somewhere in the space to land. This could be a way of moving fast between two different locations without teleporting.

![](/images/cozy-world-map.png){.invertable}

And then when you land, a shadow appears first and then your cozy comes falling down from the sky and lands like a superhero (screenshake included)

![](/images/cozy-superhero-landing.png){.invertable}


<a name="22"></a>

## #22: Jumping 

Now that there are shadows underneath the cozies, it feels like you should be able to jump. Just like, press spacebar and then... *boioioioing*

![](/images/cozy-jump.png){.invertable}

I feel like this would be fun and add an extra layer to the expression and body language of the cozies.

If you jump three times, maybe bounce extra high just like mario?


<a name="21"></a>

## #21: Tumble out 

If you suddenly teleport somewhere, the people there should see you coming before you arrive. I imagine a portal opening up and then your cozy tumbles head over heels out of it and lands on the ground.

![](/images/cozy-teleport-tumble.png){.invertable}


<a name="20"></a>

## #20: Sudden teleportation 

If someone teleports for some reason, or jumps to a different part of the map, I want to be able to see where they went and follow close behind.

![](/images/cozy-teleport-arrow.png){.invertable}

A portal appears with an arrow on it and you can click on it to teleport to the same location. The portal is only temporary and will disappear after a short time.

Even better if the cozies disappear in a cloud of smoke like ninjas


<a name="19"></a>

## #19: High five 

I want the pointers to be more expressive and be able to be used in more situations. What if when you hit two pointers together it creates some particle effect around it like having a high five in virtual space...

The faster you hit, the bigger the effect

![](/images/cozy-high-five.png){.invertable}


<a name="18"></a>

## #18: URL structure 

Everything needs to be thought about, even the way we structure URLs. This is actually an incredibly important decision, if you do it badly it gets really hard to change later on.

I think something like `cozyro.om/@/address/room` makes sense because you can read it almost like English—the `@` symbol tells you that you are at a particular location, and then the address and room name give you extra context as to where

For example you might be able to find me at `cozyro.om/@/azlen/workshop`

Or to simplify even further I can give you the link `room.to/azlen` and then I can redirect that link to be wherever I am at any given moment, even if it's outside of cozyroom


<a name="17"></a>

## #17: Loading screen 

Loading screens can be useful places to teach new features or key commands that someone might not yet know about.

![](/images/cozy-loading-screen.png)


<a name="16"></a>

## #16: Bubble object panel 

I don't like the current object panel. It feels too intimidating, especially as we add more and more objects and categories it will become difficult to find things.

Maybe instead there can be these bubble-like buttons that surround it, each with a different object. The ones closest to the object button might be recent objects or interactive objects that are versatile in many situations.

![](/images/cozy-bubble-object-panel.png)

Common categories of objects lounge around at the edges, but there aren't too many to overwhelm you, and if you want to find something specific you can just start typing anytime to bring up a search—which will basically filter the bubbles and categories and show a new spread radiating outwards.

And then if I use something *very* often maybe I can drag it out and place it into the goopy, customizable interface.

![](/images/cozy-place-object-into-toolbar.png){.invertable}


<a name="15"></a>

## #15: Goopy menu 

What if the toolbar was a bit goopy, like you can drag around any of the buttons and place them wherever you like (maybe they magnetize to the sides/corners). This would let each person be able to customize their own interface rather than being stuck with my own design decisions.

![](/images/cozy-goopy-menu.png)

Or maybe I'm being too literal when talking about GUIs huh?


<a name="14"></a>

## #14: Speech bubble 

If you send a message, I wonder if it should appear over your head like a comic speech bubble...

![](/images/cozy-comic-speech-bubble.png)

Sometimes the messages fade out too quickly and I want to keep something around for later. If someone says something particularly interesting I want to be able to grab that message and drag it more permanently into the space.

![](/images/cozy-comic-speech-bubble-drag.png)


<a name="13"></a>

## #13: Messaging expands toolbar 

If I click on the message button then the toolbar can expand to reveal an input for me to type in 

![](/images/cozy-chat.png)

However it feels like there's not enough space here if you type a lot of text—especially with icons on either side. I think if you type far enough then the left message icon can collapse, leaving only the button to send the message:

![](/images/cozy-chat-collapse-icon.png)


<a name="12"></a>

## #12: Bottom toolbar 

I think we need to consolidate all the buttons into a single toolbar. Spatially it feels weird to have to look up into the corner to mute yourself or create a new object, if you position the toolbar at the bottom then your cozy will look down which feels kind of like rummaging through your backpack or something

![](/images/cozy-toolbar.png)


<a name="11"></a>

## #11: Cozy shadows 

I want my cozy to feel a little more round and three-dimensional, so I think adding shadow / shading both to the sides and beneath the cozy will make it feel like it is actually standing on the ground beneath.

![](/images/cozy-shadows.png)

Looks a lot better than the flat, shadowless, single colour cozies we had before.


<a name="10"></a>

## #10: Portal swipe 

What if walking through a portal had this swipe transition across the screen as you walk into a new space

![](/images/cozy-portal-swipe.png){.invertable}

This would let me be able to "peek inside" of a space before fully walking into it, or go over to grab something and then pull it into my current room

Kind of like this, but with a swipe across as you enter a new room

<iframe src="https://giphy.com/embed/cQn4uEVVBCAiIdsNoS" width="480" height="384" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>


<a name="9"></a>

## #9: Anatomy 

Have you ever thought of the anatomy of a cozy?

<!--/images/cozy-cross-section.png-->

![](/images/cozy-cross-section-2.png){.invertable}

As a joke I want it to secretly be canon that cozies are actually mochi and so if you cut them open (*please don't do that!*) you'll find filling and layers of sweetness

![](/images/cozy-mochi.png)


<a name="8"></a>

## #8: Legs 

Can you imagine a cozy growing legs? It would be a fun way to move fast across the map, the longer your legs the longer your stride

![](/images/cozy-legs.png){.invertable}

It would be really funny to see everyone's cozies standing at different heights

![](/images/cozy-legs-heights.png){.invertable}

Or if you can grow and shrink your legs at will then you can make a little dance where you bob up and down [^teabag]

[^teabag]: although maybe this is a bad idea because that reminds me of those shooter games where obnoxious players "teabag" their enemy's corpses


<a name="7"></a>

## #7: Drawing pad 

Sometimes I want an object that doesn't exist yet in the object panel. It would be fun if I could draw new objects myself on a little drawing pad and bring them into the space.

![](/images/cozy-drawing-pad.png){.invertable}


<a name="6"></a>

## #6: Small room 

When I create an empty room, it stretches out like an infinite blank desert in all directions. This is a big problem because it doesn't feel cozy.

What if instead you start in a small room, but maybe you can expand it as you need more space.

![](/images/cozy-small-room.png){.invertable}

The space outside the room could be meaningful too, it could be like a blackboard you can draw on

Or perhaps I want to be on a spaceship and I set the background to be space, if I go AFK then I get kicked into space and start floating around in zero gravity


<a name="5"></a>

## #5: Creature creator 

Imagining a Spore-like creature creator but for designing your cozy or designing new *interactive objects* and hooking up different pieces and functionality to them.

![](/images/cozy-creature-creator.png){.invertable}


<a name="4"></a>

## #4: Vowels change mouth shape 

What if as I speak, cozyroom analyzes the vowels and sound of my speech to change my cozy's mouth shape accordingly. It would really make speaking feel a lot more natural.

![](/images/cozy-vowels-mouth-shape.png){.invertable}


<a name="3"></a>

## #3: Interface exploration 

The interface top-left feels like it has too many focus points, starting to feel cluttered especially as I add new objects and features, I want to explore ways the interface could be redesigned—get rid of cognitive load, but keep the coziness

![](/images/cozy-interface-ideas.png){.invertable}


<a name="2"></a>

## #2: 2d Search 

Now that there are text blocks I want to be able to search to find something I've written in the space.

I Imagine as you search it brings up little snapshots of different places where that word / phrase appears, each of these is like a little portal and you can click on any of them to teleport yourself to that area.

![](/images/cozy-2d-search.png){.grayscale .invertable}


<a name="1"></a>

## #1: Squishy cozies 

The movement of cozies is too hard and rigid, I think they should be a bit more fun and squishy. When you move from one place to another it can be like: *squish*-*squosh* *squish*-*squosh*

![](/images/cozy-squish.png){.invertable}

<!-- <a name="start"></a> -->

## #0: The journey begins

![](/images/cozy-initial-sketch.jpeg)