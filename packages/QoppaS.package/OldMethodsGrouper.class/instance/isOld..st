as yet unclassified
isOld: aContextNode
	| timestamp |
	timestamp := aContextNode at: #timestamp.
	^ (timestamp ifNil: [^true]) < self oldThreshold