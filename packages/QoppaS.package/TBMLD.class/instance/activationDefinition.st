activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			self setViewer: activation viewer.
			activation definitionContent]