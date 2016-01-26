definitions
defcbf9046c5297e540a31e595313a2dd11
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | OldMethodsGrouper new groupContexts: objects]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'cbf9046c-5297-e540-a31e-595313a2dd11').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '6 January 2016 4:47:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | OldMethodsGrouper new groupContexts: objects]
		value: in) do: [:result | out addAll: result asList]]')})