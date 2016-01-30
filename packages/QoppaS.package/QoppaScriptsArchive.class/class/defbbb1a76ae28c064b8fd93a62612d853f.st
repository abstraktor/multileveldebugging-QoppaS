definitions
defbbb1a76ae28c064b8fd93a62612d853f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextNode | contextNode dataHolders ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'bbb1a76a-e28c-064b-8fd9-3a62612d853f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:50:27 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextNode | contextNode dataHolders ]]
		value: in) do: [:result | out addAll: result asList]]')})