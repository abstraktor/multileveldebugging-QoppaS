verifier
verifyBeforeStepping
	(self verifier verifyNextBytecodeOf: self debugger contextStackTop copyStack)
		ifNotNil: [:result|
			result ifFalse: [self verifier confirm].
			^true].
		
	^false