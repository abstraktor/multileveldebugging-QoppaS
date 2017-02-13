as yet unclassified
visitBraceNode: aBraceNode
	^(self nodeFor: aBraceNode)
		addChildren: (aBraceNode elements collect: [:element| element accept: self])