activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			self selectedLevel detailsOf: activation]