as yet unclassified
visitBlockNode: aBlockNode
	self checkPc: aBlockNode.
	aBlockNode statements doWithIndex: [:statement :i|
		statement comment: (aBlockNode comment copyWith: i).
		statement accept: self]