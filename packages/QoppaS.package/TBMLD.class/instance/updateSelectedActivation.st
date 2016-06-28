activations
updateSelectedActivation
	(self maySelectActivation: selectedActivation)
		ifFalse: [selectedActivation := nil ].

	(selectedActivation isNil and: (self selectedLevel isAllContainingLevel))
		ifTrue: [selectedActivation := self selectedActivations first].
		
	self changed: #selectedActivation.
	self changed: #activationSelection.
	self changed: #activationDefinition.
	
	^selectedActivation