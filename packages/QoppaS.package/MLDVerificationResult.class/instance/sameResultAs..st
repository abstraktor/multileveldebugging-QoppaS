as yet unclassified
sameResultAs: other
	self failed ifTrue: [^other failed].
	^self result = other result