definitions
def9c0e5db84f27468bbf89a5a5adab2252
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects select: [:methodContext | 'Qoppa*' match: methodContext method methodClass name ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'9c0e5db8-4f27-468b-bf89-a5a5adab2252'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'29 November 2015 4:21:39 pm'); add: (#creationAuthor->'ck'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects select: [:methodContext | ''Qoppa*'' match: methodContext method methodClass name ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)