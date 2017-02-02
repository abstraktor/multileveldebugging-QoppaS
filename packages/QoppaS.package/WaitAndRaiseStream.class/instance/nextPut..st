as yet unclassified
nextPut: anObject
	| result |
	result := super nextPut: anObject.
	
	self raiseIfEndingWithNeedle.
	
	^result