actions
doInto
	| originContext |
	originContext := debugger contextStackTop.
	[self verifyBeforeStepping. self selectedLevel stepInto] 
		doWhileFalse: [
			(self selectedLevel includes: (ActualContextNode for: debugger contextStackTop))
			or: [originContext isDead]
			or: [self verifier resultsAreValid not]].

	self updateActivations.