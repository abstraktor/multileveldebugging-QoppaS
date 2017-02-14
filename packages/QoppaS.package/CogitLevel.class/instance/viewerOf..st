as yet unclassified
viewerOf: anActivation
	^anActivation isActualContextNode
		ifTrue: [#cogitBytecode]
		ifFalse: [anActivation viewer]