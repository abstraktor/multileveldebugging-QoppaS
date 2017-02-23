selection
updateSelectedActivation
	self assert: (self selectedActivations isEmpty not).
	(self maySelectActivation: selectedActivation)
		ifFalse: [selectedActivation := nil ].

	(selectedActivation isNil and: (self selectedActivations isEmpty not)" and: (self selectedLevel isAllContainingLevel)")
		ifTrue: [selectedActivation := self selectedActivations first].
		
	self levelRepo selectedActivation: selectedActivation.
	self setViewer: (self selectedLevel viewerOf: selectedActivation).
	self changed: #isSelectedActivationAlive.
	self changed: #selectedActivation.
	self changed: #activationSelection.
	self changed: #activationDefinition.
	self changed: #leftActivationDefinition.
	self changed: #variables.
	self changed: #windowLabel.
	
	^selectedActivation