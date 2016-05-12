user interface
doStep
	| originContext |
	originContext := debugger contextStackTop.
	[debugger send] 
		doWhileFalse: [(self selectedLevel includes: (MLDActivation forContext: debugger contextStackTop))
				or: [originContext isDead] or: true].

	self activations.
	self changed: #activationChildren:.
	self changed: #activationDefinition.