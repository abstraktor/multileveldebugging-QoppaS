as yet unclassified
visitCascadeNode: aCascadeNode
	self checkPc: aCascadeNode.
	aCascadeNode receiver comment: (aCascadeNode comment copyWith: 1).
	aCascadeNode receiver accept: self.
	aCascadeNode messages doWithIndex: [:message :i|
		message comment: (aCascadeNode comment copyWith: 1+i).
		self visitMessageNodeInCascade: message]