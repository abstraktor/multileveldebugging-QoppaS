activations
updateSelectedActivation
	(selectedActivation isNil not
		and: ((self activations includes: selectedActivation) not
		and: [(self selectedActivations includes: selectedActivation) not]))
		ifTrue: [selectedActivation := nil ].

	(selectedActivation isNil and: (self selectedLevel isAllContainingLevel))
		ifTrue: [selectedActivation := self selectedActivations first].
		
	self changed: #selectedActivation.
	self changed: #activationDefinition.
	
	^selectedActivation