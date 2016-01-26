definitions
defc471a5fb440d3a4d8ca2f2da61bf4449
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype dataHolders]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c471a5fb-440d-3a4d-8ca2-f2da61bf4449').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:09:44 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype dataHolders]]
		value: in) do: [:result | out addAll: result asList]]')})