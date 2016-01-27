definitions
defee7fcd1296e95f48a619df7c4992f265
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :fieldTuple | { debugger contextVariablesInspector }, fieldTuple ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ee7fcd12-96e9-5f48-a619-df7c4992f265').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 3:35:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :fieldTuple | { debugger contextVariablesInspector }, fieldTuple ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]')})