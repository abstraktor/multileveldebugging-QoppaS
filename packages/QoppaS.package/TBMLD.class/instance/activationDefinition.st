activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			(activation isKindOf: DebuggerContextNode)
				ifTrue: [self setViewer: activation viewer].
			activation definitionContent]