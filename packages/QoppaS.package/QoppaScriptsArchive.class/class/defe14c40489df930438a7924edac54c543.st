definitions
defe14c40489df930438a7924edac54c543
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | {contextNodePrototype executionProgress first. contextNodePrototype executionProgress last} ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'e14c4048-9df9-3043-8a79-24edac54c543'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:35:39 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | {contextNodePrototype executionProgress first. contextNodePrototype executionProgress last} ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)