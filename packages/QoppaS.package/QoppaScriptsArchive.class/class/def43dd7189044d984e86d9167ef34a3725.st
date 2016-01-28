definitions
def43dd7189044d984e86d9167ef34a3725
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:contextPart :stackIndex :contextNode | contextNode ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'43dd7189-044d-984e-86d9-167ef34a3725').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:49:21 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:contextPart :stackIndex :contextNode | contextNode ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})