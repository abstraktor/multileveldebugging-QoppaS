as yet unclassified
asString
	^self failed
		ifTrue: ['failed with error code: ', self errorCode asString]
		ifFalse: [self result asString]