definitions
def9c0e5db84f27468bbf89a5a5adab2252
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects select: [:methodContext | 'Qoppa*' match: methodContext method methodClass name ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9c0e5db8-4f27-468b-bf89-a5a5adab2252').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'ck').
(#creationTimeStamp -> '29 November 2015 4:21:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects select: [:methodContext | ''Qoppa*'' match: methodContext method methodClass name ]]
		value: in) do: [:result | out addAll: result asList]]')})