as yet unclassified
nextPutAll: aCollection
	| result |
	result := super nextPutAll: aCollection.

	self checkAfterWritingFrom: position - aCollection size to: position.
	
	^result