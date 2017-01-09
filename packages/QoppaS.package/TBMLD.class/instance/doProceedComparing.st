user interface
doProceedComparing
	| originContext |
	originContext := debugger contextStackTop.
	
	self verifier reset.
	[Transcript showln: (debugger contextStackTop method at: debugger contextStackTop pc).
	debugger contextStackTop isDead
		ifTrue: [debugger doStep]
		ifFalse: [Transcript show: ' ', self verifyBeforeStepping. debugger send]]
	doWhileTrue: [self verifier resultsAreValid].
		
	self updateActivations.