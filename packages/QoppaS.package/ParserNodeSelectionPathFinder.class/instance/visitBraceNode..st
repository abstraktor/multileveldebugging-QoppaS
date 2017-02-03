as yet unclassified
visitBraceNode: aBraceNode
	self checkPc: aBraceNode.
	aBraceNode elements doWithIndex: [:element :i|
		element comment: (aBraceNode comment copyWith: i).
		element accept: self]