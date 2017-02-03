as yet unclassified
visitCascadeNode: aCascadeNode
	^(self nodeFor: aCascadeNode)
		addChild: (aCascadeNode receiver accept: self);
		addChildren: (aCascadeNode messages collect: [:message| self visitMessageNodeInCascade: message]).