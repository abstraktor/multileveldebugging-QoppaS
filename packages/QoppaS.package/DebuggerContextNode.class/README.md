I am a node for the context tree shown in the Multilevel Debugger.
More specific representations of contexts should inherit from me and override my accessors as necessary.

Instance Variables
	children:		OrderedCollection of children context nodes in the context tree.
	properties:		Dictionary for arbitrary context properties.

children
	- Use #addChild: to add children context nodes below this context.
	
properties
	- Can be used for experimentation during the development of specialized context nodes.
	  Store arbitrary data about the context that I represent here. You might want to promote some of that to instance variables in your subclasses later.
