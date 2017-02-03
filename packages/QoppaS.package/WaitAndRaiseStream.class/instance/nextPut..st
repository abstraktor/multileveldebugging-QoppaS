as yet unclassified
nextPut: anObject
	| result |
	result := super nextPut: anObject.
	
	self checkAfterWritingFrom: position -1 to: position.
	
	^result