definitions
def7d10b8d9ffaf4d4aa99561e35bf87dee
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'7d10b8d9-ffaf-4d4a-a995-61e35bf87dee'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 5:25:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype summary]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)