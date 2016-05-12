activations
selectedActivation: newSelectedActivation
	(self maySelectActivation: newSelectedActivation)
		ifTrue: [selectedActivation := newSelectedActivation].
	
	self updateSelectedActivation.