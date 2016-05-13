activations
updateActivations
	activations := self debugger interruptedContext contextStack
		collect: [:context| |activation|
			activation := ContextNodePrototype for: context.
			activation group: (self levelRepo levelOf: activation).
			activation].
	
	self updateSelectedActivations.
	
	self changed: #activations.
	self changed: #activationChildren:.
	
	^activations