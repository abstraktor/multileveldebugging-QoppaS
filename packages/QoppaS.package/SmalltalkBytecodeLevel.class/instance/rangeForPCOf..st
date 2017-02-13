as yet unclassified
rangeForPCOf: anActivation
	| content start |
	anActivation isActualContextNode ifFalse: [^nil].
	content := self detailsOf: anActivation.
	start := 1+ (content asString findString: (String cr, anActivation contextPart pc)).
	^start to: (content asString findString: (String cr) startingAt: start).