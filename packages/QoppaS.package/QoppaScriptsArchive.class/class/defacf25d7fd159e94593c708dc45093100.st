definitions
defacf25d7fd159e94593c708dc45093100
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'acf25d7f-d159-e945-93c7-08dc45093100').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})