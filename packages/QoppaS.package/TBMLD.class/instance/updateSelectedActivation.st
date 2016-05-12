activations
updateSelectedActivation
	(selectedActivation isNil not and: [(self selectedActivations includes: selectedActivation) not])
		ifTrue: [selectedActivation := nil ].
	(selectedActivation isNil and: (self selectedLevel isAllContainingLevel))
		ifTrue: [selectedActivation := self selectedActivations first].
	styler
		ifNotNilDo: [:styler|styler classOrMetaClass: (selectedActivation ifNil: [nil class] ifNotNil: [:a | a contextPart receiver class])].
		
	self changed: #selectedActivation.
	self changed: #activationDefinition.
	
	^selectedActivation