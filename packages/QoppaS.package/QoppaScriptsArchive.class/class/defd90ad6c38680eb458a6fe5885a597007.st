definitions
defd90ad6c38680eb458a6fe5885a597007
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:association | association value ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d90ad6c3-8680-eb45-8a6f-e5885a597007').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:53:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:association | association value ]]
		value: in) do: [:result | out addAll: result asList]]')})