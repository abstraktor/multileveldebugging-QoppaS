definitions
defe0cd0beda24d494ea35aabb8e92a26ab
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out |
	[:objects | | collectedNodes |
		collectedNodes := OrderedCollection new.
		objects do: [:node |
			node contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [ | qoppaNode expression | qoppaNode := VirtualContextNode new.
					expression := node contextPart arguments first.
					qoppaNode summary: 'Qoppa evaluation of ', expression qoppaPrintString.
					qoppaNode definitionContent: (Text fromString: expression qoppaPrintString).
					collectedNodes do: [:each | qoppaNode addChild: each].
					collectedNodes removeAll.
					qoppaNode addChild: node.
					out add: qoppaNode ]
				ifFalse: [collectedNodes add: node]].
		out addAll: collectedNodes] value: in]).
(#class -> ViQueryStepDefinition).
(#id -> #'e0cd0bed-a24d-494e-a35a-abb8e92a26ab').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 January 2016 5:06:03 pm')})).
(#sourceCode -> '[:in :out |
	[:objects | | collectedNodes |
		collectedNodes := OrderedCollection new.
		objects do: [:node |
			node contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [ | qoppaNode expression | qoppaNode := VirtualContextNode new.
					expression := node contextPart arguments first.
					qoppaNode summary: ''Qoppa evaluation of '', expression qoppaPrintString.
					qoppaNode definitionContent: (Text fromString: expression qoppaPrintString).
					collectedNodes do: [:each | qoppaNode addChild: each].
					collectedNodes removeAll.
					qoppaNode addChild: node.
					out add: qoppaNode ]
				ifFalse: [collectedNodes add: node]].
		out addAll: collectedNodes] value: in]')})