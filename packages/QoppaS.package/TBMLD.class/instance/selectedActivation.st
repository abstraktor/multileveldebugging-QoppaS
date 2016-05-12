activations
selectedActivation
	(selectedActivation isNil not and: [self cachedActivations anySatisfy: [:act | act contextPart = selectedActivation contextPart]])
		ifFalse: [selectedActivation := nil ].
	(selectedActivation isNil and: (self selectedLevel isAllContainingLevel))
			ifTrue: [selectedActivation := self selectedActivations first].
	styler
		ifNotNilDo: [:styler|styler classOrMetaClass: selectedActivation contextPart receiver class].
	^selectedActivation