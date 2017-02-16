as yet unclassified
basicAt: index put: value
	| result |
	result := super basicAt: index put: value.
	
	self checkAfterAt: index put: value.
	
	^result