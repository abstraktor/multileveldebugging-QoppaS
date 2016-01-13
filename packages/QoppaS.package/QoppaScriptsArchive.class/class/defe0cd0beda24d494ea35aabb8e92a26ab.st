definitions
defe0cd0beda24d494ea35aabb8e92a26ab
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out |
	[:objects | | collectedNodes |
		collectedNodes := OrderedCollection new.
		objects do: [:node |
			node contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [ | qoppaNode expression | qoppaNode := VirtualContextNode new.
					expression := node contextPart arguments first.
					qoppaNode summary: 'Qoppa evaluation of ', expression qoppaPrintString.
					collectedNodes do: [:each | qoppaNode addChild: each].
					collectedNodes removeAll.
					qoppaNode addChild: node.
					out add: qoppaNode ]
				ifFalse: [collectedNodes add: node]].
		out addAll: collectedNodes] value: in]); add: (#id->#'e0cd0bed-a24d-494e-a35a-abb8e92a26ab'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 January 2016 5:06:03 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out |
	[:objects | | collectedNodes |
		collectedNodes := OrderedCollection new.
		objects do: [:node |
			node contextPart method == (QoppaSexprSemantic >> #eval:in:)
				ifTrue: [ | qoppaNode expression | qoppaNode := VirtualContextNode new.
					expression := node contextPart arguments first.
					qoppaNode summary: ''Qoppa evaluation of '', expression qoppaPrintString.
					collectedNodes do: [:each | qoppaNode addChild: each].
					collectedNodes removeAll.
					qoppaNode addChild: node.
					out add: qoppaNode ]
				ifFalse: [collectedNodes add: node]].
		out addAll: collectedNodes] value: in]'); yourself)