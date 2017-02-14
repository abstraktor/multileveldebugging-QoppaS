as yet unclassified
viewerOf: anActivation
	^anActivation isActualContextNode
		ifTrue: [#smalltalkBytecode]
		ifFalse: [anActivation viewer]