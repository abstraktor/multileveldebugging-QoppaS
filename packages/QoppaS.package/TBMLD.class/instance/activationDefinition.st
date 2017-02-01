activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			self setViewer: activation viewer.
			activation group detailsOf: activation]