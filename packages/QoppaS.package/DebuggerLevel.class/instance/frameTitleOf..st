as yet unclassified
frameTitleOf: methodContext
	^methodContext isClosureContext
		ifTrue: [ '[] in ', methodContext selector]
		ifFalse: [methodContext selector]