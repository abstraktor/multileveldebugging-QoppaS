as yet unclassified
viewerOf: anActivation
	^anActivation isActualContextNode
		ifTrue: [#smalltalkParseNode]
		ifFalse: [anActivation viewer]