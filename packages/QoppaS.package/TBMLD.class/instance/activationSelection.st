activations
activationSelection
	^self selectedActivation
		ifNotNil: [:frame | frame rangeForPC]