activations
updateActivations
	activations := self debugger interruptedContext contextStack
		collectWithIndex: [:context :i| |activation|
			activation := ContextNodePrototype for: context atIndex: i.
			activation group: (self levelRepo levelOf: activation).
			activation].
	
	self updateSelectedActivations.
	
	self changed: #activations.
	self changed: #activationChildren:.
	
	^activations