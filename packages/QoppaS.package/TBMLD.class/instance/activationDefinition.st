activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			
			"tbd: let nodes implement their own Model to construct a morph for them"
			(activation isKindOf: ContextNodePrototype)
				ifTrue: [	styler ifNotNilDo: [:styler|
					styler classOrMetaClass: (selectedActivation
						ifNil: [nil class]
						ifNotNil: [:a | a contextPart receiver class])]].
			
			activation definitionContent]