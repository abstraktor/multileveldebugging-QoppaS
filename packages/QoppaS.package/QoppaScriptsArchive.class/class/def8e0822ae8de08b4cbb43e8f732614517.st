definitions
def8e0822ae8de08b4cbb43e8f732614517
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype children]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8e0822ae-8de0-8b4c-bb43-e8f732614517').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 5:08:41 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype children]]
		value: in) do: [:result | out addAll: result asList]]')})