verifier
verifyBeforeStepping
	(self verifier verifyNextBytecodeOf: self contextPart copyStack)
		ifNotNil: [:result|
			result ifFalse: [self verifier confirm ifFalse: [self verifier reset]].
			^true].
		
	^false