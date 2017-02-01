actions
doOver
	self verifyBeforeStepping.
	self verifier resultsAreValid ifTrue: [
		debugger doStep].
	self updateActivations.