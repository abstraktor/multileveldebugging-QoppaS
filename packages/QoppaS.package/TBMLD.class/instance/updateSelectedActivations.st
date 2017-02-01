activations
updateSelectedActivations
	selectedActivations := self selectedLevel
		ifNil: [self activations]
		ifNotNil: [
			self selectedLevel applyGroupLabels: self activations.
			(LabelContextGrouper
				withLevelRepo: self levelRepo
				groupNodes: self activations)
			do: [:activation| activation group: (self levelRepo levelOf: activation)];
			select: [:activation | self selectedLevel includes: activation]].
		
	self updateSelectedActivation.
	self changed: #selectedActivations.	
		
	^selectedActivations