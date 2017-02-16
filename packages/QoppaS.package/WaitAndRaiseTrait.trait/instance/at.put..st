as yet unclassified
at: index put: value
	| result |
	result := super at: index put: value.
	
	self checkAfterAt: index put: value.
	
	^result