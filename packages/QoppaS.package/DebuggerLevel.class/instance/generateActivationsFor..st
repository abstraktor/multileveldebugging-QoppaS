activations
generateActivationsFor: activations
	self applyGroupLabels: activations.
	^LabelContextGrouper
		withLevelRepo: self repo
		groupNodes: activations