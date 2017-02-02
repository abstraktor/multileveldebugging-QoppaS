as yet unclassified
selectedActivation: aNewSelectedActivation
	selectedActivation := aNewSelectedActivation.
	selectedActivation ifNotNil: [
		selectedActivation group selectedActivationChanged].