definitions
def2e4bc2a40f545348b1f5732093cc6e83
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'2e4bc2a4-0f54-5348-b1f5-732093cc6e83'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'12 November 2015 6:32:04 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)