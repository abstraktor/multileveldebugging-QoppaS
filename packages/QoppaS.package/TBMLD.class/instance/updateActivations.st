activations
updateActivations
	activations := self debugger interruptedContext contextStack
		collectWithIndex: [:context :i| |activation|
			activation := ActualContextNode for: context atIndex: i.
			activation].

	self verifier resultsAreValid
		ifFalse: [activations := activations copyWithFirst: self verifier contextNode].
		
	activations do: [:activation|	activation group: (self levelRepo levelOf: activation priorizing: self selectedLevel)].
	
	self updateSelectedActivations.
	
	self changed: #activations.
	self changed: #activationChildren:.
	
	^activations