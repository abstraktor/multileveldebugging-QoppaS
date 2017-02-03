as yet unclassified
visitMessageNode: aMessageNode
	^(self nodeFor: aMessageNode)
		addChild: (aMessageNode receiver accept: self);
		"receiver notNil ifTrue: ''receiver is nil for cascades''
			[receiver accept: self]."
		addChild: (aMessageNode selector accept: self);
		addChildren: (aMessageNode argumentsInEvaluationOrder 
			collect: [:argument| argument accept: self])