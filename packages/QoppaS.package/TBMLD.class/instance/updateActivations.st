activations
updateActivations
	activations := self debugger interruptedContext contextStack
		collect: [:context| |activation|
			activation := MLDActivation forContext: context.
			activation group: (self levelRepo levelOf: activation).
			activation].
	
	self updateSelectedActivations.
	
	self changed: #activations.
	self changed: #activationChildren:.
	
	^activations