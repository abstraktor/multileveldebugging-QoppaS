activations
activationDefinition
	^self selectedActivation
		ifNotNil: [:activation |
			editorMorph ifNotNil: [:editorMorph |
				"tbd: let nodes implement their own Model to construct a morph for them"
				((activation isKindOf: DebuggerContextNode)
					and: [activation viewer = #smalltalk])
					ifTrue: [editorMorph styler: styler.
						styler ifNotNilDo: [:styler|
							styler classOrMetaClass: (activation
								ifNil: [nil class]
								ifNotNil: [:a | a viewerClass])]]
					ifFalse: [editorMorph styler: nil]].
			
			activation definitionContent]