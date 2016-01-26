definitions
def21f116bb62481b438f0b6dbf7a102497
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNode | contextNode children]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'21f116bb-6248-1b43-8f0b-6dbf7a102497').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '21 January 2016 10:53:11 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNode | contextNode children]]
		value: in) do: [:result | out addAll: result asList]]')})