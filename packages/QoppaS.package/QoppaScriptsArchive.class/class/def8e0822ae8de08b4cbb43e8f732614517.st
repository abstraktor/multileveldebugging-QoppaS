definitions
def8e0822ae8de08b4cbb43e8f732614517
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype children]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'8e0822ae-8de0-8b4c-bb43-e8f732614517'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 5:08:41 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype children]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)