activations
activations
	activations := self debugger interruptedContext contextStack
		collect: [:context| |activation|
			activation := MLDActivation forContext: context.
			activation group: (self levelRepo levelOf: activation).
			activation].
	
	self changed: #selectedActivations.
	self changed: #selectedActivation.
	
	^activations