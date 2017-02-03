as yet unclassified
visitFutureNode: aFutureNode
	self checkPc: aFutureNode.
	aFutureNode receiver comment: (aFutureNode comment copyWith: 1).
	aFutureNode receiver accept: self.
	(aFutureNode originalSelector isKindOf: SelectorNode) ifTrue: [
		aFutureNode originalSelector comment: (aFutureNode comment copyWith: 2).
		aFutureNode originalSelector accept: self]