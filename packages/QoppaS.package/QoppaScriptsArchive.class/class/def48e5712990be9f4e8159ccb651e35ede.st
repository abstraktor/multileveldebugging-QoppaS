definitions
def48e5712990be9f4e8159ccb651e35ede
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'48e57129-90be-9f4e-8159-ccb651e35ede'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)