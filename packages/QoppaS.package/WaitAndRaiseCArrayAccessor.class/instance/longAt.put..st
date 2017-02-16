as yet unclassified
longAt: index put: value
	| result |
	result := super longAt: index put: value.
	
	self checkAfterAt: (offset + index) // 4 + 1 put: value.
	
	^result