definitions
def4b7e3048663db94cbd85b707bf78c41d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex :contextNode | context ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4b7e3048-663d-b94c-bd85-b707bf78c41d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 2:04:02 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex :contextNode | context ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})