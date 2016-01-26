definitions
deff8cde2eeaf31e944a3d50108a96970b6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f8cde2ee-af31-e944-a3d5-0108a96970b6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})