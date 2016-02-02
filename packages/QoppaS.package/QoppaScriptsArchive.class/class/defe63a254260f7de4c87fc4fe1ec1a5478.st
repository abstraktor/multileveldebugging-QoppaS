definitions
defe63a254260f7de4c87fc4fe1ec1a5478
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex :contextNode | contextNode] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e63a2542-60f7-de4c-87fc-4fe1ec1a5478').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 4:56:30 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex :contextNode | contextNode] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})