definitions
def8ad17ec7a18af9428e34bd83e8251785
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 6:42:52 pm'); yourself)); add: (#id->#'8ad17ec7-a18a-f942-8e34-bd83e8251785'); add: (#block->[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)