as yet unclassified
frameTitleOf: activation
	| aMethodContext |
	activation isActualContextNode ifTrue: [
		aMethodContext := activation contextPart.
		(aMethodContext selector = #eval:in:)
			ifTrue: [^'eval: ', (aMethodContext at: 1) qoppaPrintString, ' in:' ]].
		
	^((activation at: #isQoppaOperative ifAbsent: false)
		ifTrue: ['Qoppa: ']
		ifFalse: ['']), (super frameTitleOf: activation)