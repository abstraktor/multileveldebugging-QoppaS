as yet unclassified
nextPutAll: aCollection
	| result |
	result := super nextPutAll: aCollection.
	
	self raiseIfEndingWithNeedle.
	
	^result