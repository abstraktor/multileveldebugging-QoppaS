as yet unclassified
frameTitleOf: activation
	"^activation contextPart printString"
	^activation contextPart isClosureContext
		ifTrue: [ '[] in ', activation contextPart selector]
		ifFalse: [activation contextPart selector]