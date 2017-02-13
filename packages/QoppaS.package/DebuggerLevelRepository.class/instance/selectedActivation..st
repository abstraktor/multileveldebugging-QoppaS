as yet unclassified
selectedActivation: aNewSelectedActivation
	"to be called from MLD, not from a level"
	selectedActivation := aNewSelectedActivation.
	selectedActivation ifNotNil: [
		selectedActivation group selectedActivationChanged].