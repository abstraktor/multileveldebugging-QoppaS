activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			self setViewer: activation viewer.
			self selectedLevel detailsOf: activation]