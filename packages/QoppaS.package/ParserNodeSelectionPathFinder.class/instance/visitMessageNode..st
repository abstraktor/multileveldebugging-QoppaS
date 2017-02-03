as yet unclassified
visitMessageNode: aMessageNode
	self checkPc: aMessageNode.
	aMessageNode receiver comment: (aMessageNode comment copyWith: 1).
	aMessageNode receiver accept: self.
	"receiver notNil ifTrue: ''receiver is nil for cascades''
		[receiver accept: self]."
	aMessageNode selector comment: (aMessageNode comment copyWith: 2).
	aMessageNode selector accept: self.
	aMessageNode argumentsInEvaluationOrder doWithIndex: [:argument :i|
		argument comment: (aMessageNode comment copyWith: i+2).
		argument accept: self]