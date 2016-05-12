activations
selectedActivation: newSelectedActivation
	selectedActivation := newSelectedActivation.
	self changed: #selectedActivation.
	self changed: #activationDefinition.