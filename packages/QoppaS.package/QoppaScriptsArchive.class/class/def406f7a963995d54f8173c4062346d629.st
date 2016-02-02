definitions
def406f7a963995d54f8173c4062346d629
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects select: [:bindingList | bindingList cadr isKindOf: QoppaOperative]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'406f7a96-3995-d54f-8173-c4062346d629').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:33:56 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects select: [:bindingList | bindingList cadr isKindOf: QoppaOperative]]
		value: in) do: [:result | out addAll: result asList]]')})