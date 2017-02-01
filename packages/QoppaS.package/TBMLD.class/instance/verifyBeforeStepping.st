verifier
verifyBeforeStepping
	(self verifier verifyNextBytecodeOf: self contextPart copyStack)
		ifNotNil: [:result|
			result ifFalse: [self verifier confirm
				caseOf: {
					[#debug] -> [self updateActivations].
					[#disableChecking] -> [self disableVerifier].
					[#noAction] -> [self verifier reset]}].
			^true].
		
	^false