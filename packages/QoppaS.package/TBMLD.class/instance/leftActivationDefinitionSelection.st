editor
leftActivationDefinitionSelection
	^self selectedActivation ifNotNil: [:activation| activation at: #leftDefinitionSelection ifAbsent: nil]