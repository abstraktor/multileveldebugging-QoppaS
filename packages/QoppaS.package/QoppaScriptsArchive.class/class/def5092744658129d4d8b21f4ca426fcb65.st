definitions
def5092744658129d4d8b21f4ca426fcb65
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'50927446-5812-9d4d-8b21-f4ca426fcb65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:08:20 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]')})