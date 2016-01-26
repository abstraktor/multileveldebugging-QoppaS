definitions
def1720d11b959c2043a18e8af0e90ba98e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype definitionContent]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1720d11b-959c-2043-a18e-8af0e90ba98e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:11:37 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype definitionContent]]
		value: in) do: [:result | out addAll: result asList]]')})