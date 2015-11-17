definitions
defa74074e33f35754e929b709678a8c58f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'a74074e3-3f35-754e-929b-709678a8c58f'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)