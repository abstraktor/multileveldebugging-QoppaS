activations
activationSelection
	^self selectedActivation
		ifNotNil: [:frame | self selectedLevel rangeForPCOf: frame]
		ifNil: [0 to: 0]