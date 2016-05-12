as yet unclassified
frameTitleOf: activation
	| aMethodContext |
	aMethodContext := activation contextPart.
	(aMethodContext selector = #eval:in:)
		ifTrue: [^'eval: ', (aMethodContext at: 1) qoppaPrintString, ' in:' ].
		
	^super frameTitleOf: activation