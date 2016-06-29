user interface
doInto
	| originContext |
	originContext := debugger contextStackTop.
	[debugger send] 
		doWhileFalse: [(self selectedLevel includes: (ContextNodePrototype for: debugger contextStackTop))
				or: [originContext isDead]].

	self updateActivations.