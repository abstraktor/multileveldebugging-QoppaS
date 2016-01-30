definitions
def7b8da61a8b63694098937d245eef98ba
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:inspector :fieldName :index | inspector selectionIndex == index ifFalse: [inspector toggleIndex: index].
	inspector selection ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7b8da61a-8b63-6940-9893-7d245eef98ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 3:52:14 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:inspector :fieldName :index | inspector selectionIndex == index ifFalse: [inspector toggleIndex: index].
	inspector selection ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})