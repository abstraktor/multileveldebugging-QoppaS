activations
selectedActivations
	^self selectedLevel
		ifNil: [self cachedActivations]
		ifNotNil: [
			self selectedLevel applyGroupLabels: self cachedActivations.
			LabelContextGrouper withLevelRepo: self levelRepo groupNodes:
				(self cachedActivations select: [:activation | self selectedLevel includes: activation])]