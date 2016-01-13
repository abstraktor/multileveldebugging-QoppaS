definitions
def5092744658129d4d8b21f4ca426fcb65
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'50927446-5812-9d4d-8b21-f4ca426fcb65'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:08:20 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)