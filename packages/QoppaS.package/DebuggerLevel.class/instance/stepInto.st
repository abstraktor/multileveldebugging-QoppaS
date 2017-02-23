actions
stepInto
	| originContext |
	originContext := self debugger contextStackTop.
	[self verifier verifyBeforeStepping: self debugger. self debugger send] 
		doWhileFalse: [
			(self includes: (ActualContextNode for: self debugger contextStackTop))
			or: [originContext isDead]
			or: [self verifier resultsAreValid not]].

	"self updateActivations."