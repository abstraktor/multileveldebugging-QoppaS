as yet unclassified
frameTitleOf: methodContext 
	^((methodContext receiver isKindOf: OhmAttributes) and: [(methodContext at: 1) isKindOf: OhmNode])
		ifFalse: [methodContext selector]
		ifTrue: [ |node|
			node := (methodContext at: 1).
			node ruleName ,': ',
			node interval contents]