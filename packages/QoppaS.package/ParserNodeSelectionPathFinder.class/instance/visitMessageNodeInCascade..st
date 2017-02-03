as yet unclassified
visitMessageNodeInCascade: aMessageNode
	self checkPc: aMessageNode.
	"receiver is nil for cascades"
	aMessageNode selector comment: (aMessageNode comment copyWith: 1).
	aMessageNode selector accept: self.
	aMessageNode argumentsInEvaluationOrder doWithIndex: [:argument :i|
		argument comment: (aMessageNode comment copyWith: i+1).
		argument accept: self]