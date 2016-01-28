definitions
def8e62b6c620cab44484303e684d1544b6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :association | association ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8e62b6c6-20ca-b444-8430-3e684d1544b6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:49:21 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :association | association ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})