definitions
def6975e62da8412040872822ac9d843955
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | | index |
	index := 0.
	objects collect: [:tuple |
		[:packageInfo :methodContext | index := index + 1.
			{ packageInfo. methodContext. index }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6975e62d-a841-2040-8728-22ac9d843955').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 12:44:17 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | | index |
	index := 0.
	objects collect: [:tuple |
		[:packageInfo :methodContext | index := index + 1.
			{ packageInfo. methodContext. index }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]')})