as yet unclassified
frameTitleOf: activation
	activation isActualContextNode ifFalse: [^super frameTitleOf: activation]. 
	^'', ((activation at: #primitive:) at: 1), ': ', (super frameTitleOf: activation)
		