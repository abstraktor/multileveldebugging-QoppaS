verifier
verifyBeforeStepping
	(self verifier verifyNextBytecodeOf: self contextPart copyStack)
		ifNotNil: [:result|
			result ifFalse: [self verifier confirm ifFalse: [self verifier reset] ifTrue: [self updateActivations]].
			^true].
		
	^false