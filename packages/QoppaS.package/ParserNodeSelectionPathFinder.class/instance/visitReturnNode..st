as yet unclassified
visitReturnNode: aReturnNode
	self checkPc: aReturnNode.
	aReturnNode expr comment: (aReturnNode comment copyWith: 1).
	aReturnNode expr accept: self