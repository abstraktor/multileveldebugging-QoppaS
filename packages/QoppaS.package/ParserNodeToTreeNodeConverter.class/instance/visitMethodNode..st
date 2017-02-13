as yet unclassified
visitMethodNode: aMethodNode
	^(self nodeFor: aMethodNode)
		addChild: (aMethodNode block accept: self).