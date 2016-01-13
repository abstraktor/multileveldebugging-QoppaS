definitions
defc471a5fb440d3a4d8ca2f2da61bf4449
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype dataHolders]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'c471a5fb-440d-3a4d-8ca2-f2da61bf4449'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:09:44 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype dataHolders]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)