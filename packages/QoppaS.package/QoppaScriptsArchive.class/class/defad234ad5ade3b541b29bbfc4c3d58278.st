definitions
defad234ad5ade3b541b29bbfc4c3d58278
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'ad234ad5-ade3-b541-b29b-bfc4c3d58278'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:03:27 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)