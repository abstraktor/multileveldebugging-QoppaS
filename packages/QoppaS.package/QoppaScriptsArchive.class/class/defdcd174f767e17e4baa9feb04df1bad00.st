definitions
defdcd174f767e17e4baa9feb04df1bad00
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'dcd174f7-67e1-7e4b-aa9f-eb04df1bad00'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)