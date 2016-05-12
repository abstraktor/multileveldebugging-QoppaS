activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:frame | frame definitionContent]