definitions
def7a0de50c962d244f9a8904fafdb18783
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7a0de50c-962d-244f-9a89-04fafdb18783').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:49:41 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype]]
		value: in) do: [:result | out addAll: result asList]]')})