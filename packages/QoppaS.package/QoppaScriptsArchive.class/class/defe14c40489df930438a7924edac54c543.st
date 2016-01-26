definitions
defe14c40489df930438a7924edac54c543
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | {contextNodePrototype executionProgress first. contextNodePrototype executionProgress last} ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e14c4048-9df9-3043-8a79-24edac54c543').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:35:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | {contextNodePrototype executionProgress first. contextNodePrototype executionProgress last} ]]
		value: in) do: [:result | out addAll: result asList]]')})