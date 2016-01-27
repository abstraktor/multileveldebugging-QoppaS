definitions
def908e91173c8a6149a364b4a33c8f921e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects |
	objects withIndexCollect: [:fieldName :index | { fieldName. index}]]
		value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'908e9117-3c8a-6149-a364-b4a33c8f921e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 3:32:58 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects |
	objects withIndexCollect: [:fieldName :index | { fieldName. index}]]
		value: in) do: [:result | out add: result asList]]')})