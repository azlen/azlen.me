Questions:
- Can you create some kind of attention layer at multiple levels of abstraction, if so wouldn't that allow for basically infinite context? to the point where you could potentially have it be able to pull up references from specific books within it's embedding-space...?

Ideas:
- What if you do a sort of "continuous" loss calculation? where instead of doing an epoch, and do gradient descent, you have a smaller learning rate and smaller chunks but calculate the loss off a rolling window of the past few chunks (you could even go so far as per data point in training set, but it might be too costly to update gradients)
- Multiple levels of attention? different levels of abstraction?
- N-dimensional space with connections between coordinates, random new connections are formed based on co-activations (populating some kind of actual gradient, not descent), and space gets more nuanced via some kind of octree data structure
	- Starts with single connection and single "cube" (block? lobe?), of course this means it will just keep activating, so it subdivides and duplicates the connection for all subdivisions (with the idea that useless connections will get culled)
	- Calculate gradient descent (how?) to update the positions of the points in each connection?? or alternatively just keep smartly creating new connections and culling old ones...
		- Gradient descent would require some kind of "loss", but maybe that concept doesn't map cleanly to this design-space...?
		- WHAT ARE YOU TRYING TO OPTIMIZE FOR???
	- As for culling, I imagine some sort of powerlaw based on how many levels of subdivision there are (on average) in the octree