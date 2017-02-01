activations
activationSelection
	^self selectedActivation
		ifNotNil: [:activation | self selectedLevel rangeForPCOf: activation]
		ifNil: [0 to: 0]