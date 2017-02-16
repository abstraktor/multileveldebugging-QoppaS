as yet unclassified
long32At: index put: value
	| result |
	result := super long32At: index put: value.
	
	self checkAfterAt: (offset + index) // 4 + 1 put: value.
	
	^result