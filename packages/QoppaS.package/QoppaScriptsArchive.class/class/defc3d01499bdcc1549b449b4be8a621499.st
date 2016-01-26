definitions
defc3d01499bdcc1549b449b4be8a621499
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object isText
				ifFalse: [ViLabelService doObject: object]). #icon
		-> (object isText
				ifFalse: [ViIconService doObject: object]). #morph
		-> (object isText
				ifTrue: [object asMorph lock;
						margins: (0 @ 5 corner: 0 @ 2)]). #selectable -> object isText not. #tooltip
		-> [object isText
				ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c3d01499-bdcc-1549-b449-b4be8a621499').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {#text
		-> (object isText
				ifFalse: [ViLabelService doObject: object]). #icon
		-> (object isText
				ifFalse: [ViIconService doObject: object]). #morph
		-> (object isText
				ifTrue: [object asMorph lock;
						margins: (0 @ 5 corner: 0 @ 2)]). #selectable -> object isText not. #tooltip
		-> [object isText
				ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})