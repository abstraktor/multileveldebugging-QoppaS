result
sameResultAs: other
	self failedWithException ifTrue: [^other failedWithException].
	self failed ifTrue: [^other failed].
	^self result = other result