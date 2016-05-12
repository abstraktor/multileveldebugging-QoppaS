activations
activationSelection
	^self selectedActivation
		ifNotNil: [:frame | frame rangeForPC]
		ifNil: [0 to: 0]