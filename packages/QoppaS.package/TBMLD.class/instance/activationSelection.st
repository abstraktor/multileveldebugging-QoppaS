activations
activationSelection
	^self selectedActivation
		ifNotNil: [:frame | frame rangeForPC: true]
		ifNil: [0 to: 0]