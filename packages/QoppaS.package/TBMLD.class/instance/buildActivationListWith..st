toolbuilder
buildActivationListWith: builder
	| activationList |
	activationList := builder pluggableTreeSpec new
		model: self;
		roots: #selectedActivations;
		icon: #activationIcon:;
		label: #activationLabel:;
		getSelected: #selectedActivation;
		setSelected: #selectedActivation:;
		getChildren: #activationChildren:;
		hasChildren: #activationHasChildren:;
		menu: #activationMenu:;
		yourself.
	^activationList