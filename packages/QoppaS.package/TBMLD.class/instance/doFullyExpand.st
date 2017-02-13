actions
doFullyExpand
	| stackSize |
	stackSize := self debugger contextStackList size.
	self debugger fullyExpandStack.
	self changed: #activations.
	self updateActivations.
	self debugger contextStackList size ~= stackSize
		ifTrue: [	self selectedActivation: (self activations at: stackSize+1)].