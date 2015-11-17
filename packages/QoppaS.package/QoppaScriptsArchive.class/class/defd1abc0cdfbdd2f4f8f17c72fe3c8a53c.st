definitions
defd1abc0cdfbdd2f4f8f17c72fe3c8a53c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'d1abc0cd-fbdd-2f4f-8f17-c72fe3c8a53c'); add: (#block->[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)