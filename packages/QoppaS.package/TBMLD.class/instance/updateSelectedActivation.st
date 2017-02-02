activations
updateSelectedActivation
	(self maySelectActivation: selectedActivation)
		ifFalse: [selectedActivation := nil ].

	(selectedActivation isNil" and: (self selectedLevel isAllContainingLevel)")
		ifTrue: [selectedActivation := self selectedActivations first].
		
	self levelRepo selectedActivation: selectedActivation.
	self changed: #selectedActivation.
	self changed: #activationSelection.
	self changed: #activationDefinition.
	self changed: #leftActivationDefinition.
	self changed: #variables.
	self changed: #windowLabel.
	
	^selectedActivation