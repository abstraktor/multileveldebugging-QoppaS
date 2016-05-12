activations
selectedActivation: newSelectedActivation
	(newSelectedActivation notNil
		and: ((self activations includes: newSelectedActivation)
		or: [self selectedActivations includes: newSelectedActivation]))
			ifTrue: [selectedActivation := newSelectedActivation].
	
	self updateSelectedActivation.