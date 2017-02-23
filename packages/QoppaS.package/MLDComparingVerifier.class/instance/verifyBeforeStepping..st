as yet unclassified
verifyBeforeStepping: aDebugger
	(self verifyNextBytecodeOf: aDebugger contextStackTop copyStack)
		ifNotNil: [:result|
			result ifFalse: [self confirm].
			^true].
		
	^false