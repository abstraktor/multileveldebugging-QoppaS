as yet unclassified
visitMessageNodeInCascade: aMessageNode
	^(self nodeFor: aMessageNode)
	"receiver is nil for cascades"
		addChild: (aMessageNode selector accept: self);
		addChildren: (aMessageNode argumentsInEvaluationOrder
			collect: [:argument| argument accept: self])