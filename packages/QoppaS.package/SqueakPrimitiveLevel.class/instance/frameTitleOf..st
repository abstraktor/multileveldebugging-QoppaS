as yet unclassified
frameTitleOf: methodContext
	^'', ((methodContext method pragmaAt: #primitive:) argumentAt: 1), ': ', (super frameTitleOf: methodContext)
		