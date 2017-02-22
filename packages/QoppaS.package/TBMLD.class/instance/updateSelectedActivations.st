selection
updateSelectedActivations
	activations ifNotNil: [
		activations do: [:a| a root: nil]].
	selectedActivations := self selectedLevel
		ifNil: [self activations]
		ifNotNil: [
			(self selectedLevel generateActivationsFor: self activations)
			do: [:activation|
				activation group: (self levelRepo
					levelOf: activation
					priorizing: self selectedLevel)];
			select: [:activation | self selectedLevel includes: activation]].
		
	self updateSelectedActivation.
	self changed: #selectedActivations.	
		
	^selectedActivations