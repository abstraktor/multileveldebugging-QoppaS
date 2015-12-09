definitions
defa296bb9818def3478c8934ffd03866a9
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'a296bb98-18de-f347-8c89-34ffd03866a9'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 6:56:46 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)