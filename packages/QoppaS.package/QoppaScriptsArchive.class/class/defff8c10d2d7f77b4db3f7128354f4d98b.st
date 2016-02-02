definitions
defff8c10d2d7f77b4db3f7128354f4d98b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:virtualContextNode | { #text -> virtualContextNode definitionContent }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ff8c10d2-d7f7-7b4d-b3f7-128354f4d98b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 4:57:53 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:virtualContextNode | { #text -> virtualContextNode definitionContent }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})