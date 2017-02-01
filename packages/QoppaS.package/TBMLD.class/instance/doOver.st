actions
doOver
	self verifyBeforeStepping.
	self verifier resultsAreValid ifTrue: [
		self selectedLevel stepOver].
	self updateActivations.