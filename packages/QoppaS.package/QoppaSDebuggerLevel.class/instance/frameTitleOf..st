as yet unclassified
frameTitleOf: aMethodContext
	(aMethodContext selector = #eval:in:)
		ifTrue: [^'eval: ', (aMethodContext at: 1) qoppaPrintString, ' in:' ].
		
	^super frameTitleOf: aMethodContext