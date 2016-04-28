definitions
defc885a31e58c44a39af44d048cdc2cacf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c885a31e-58c4-4a39-af44-d048cdc2cacf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'bak').
(#creationTimeStamp -> '27 April 2016 12:20:52 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]')})