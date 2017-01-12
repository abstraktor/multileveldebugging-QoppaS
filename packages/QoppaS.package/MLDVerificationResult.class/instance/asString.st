as yet unclassified
asString
	self failedWithException ifTrue: [^'failed with exception: ', self exception messageText].
	
	self failed ifTrue: [^'failed with error code: ', self errorCode asString].
	
	^self result asString.