as yet unclassified
frameTitleOf: activation 
	| node methodContext |
	methodContext := activation contextPart.
	node := ((methodContext receiver isKindOf: OhmAttributes) and: [(methodContext at: 1) isKindOf: OhmNode])
		ifFalse: [(methodContext at: 1) cst]
		ifTrue: [methodContext at: 1].

	^node ruleName ,': ', node interval contents