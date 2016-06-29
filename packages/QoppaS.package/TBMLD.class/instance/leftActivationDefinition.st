editor
leftActivationDefinition
	^self selectedActivation ifNotNil: [:activation| activation at: #leftDefinitionContent ifAbsent: nil]