definitions
def1720d11b959c2043a18e8af0e90ba98e
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype definitionContent]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'1720d11b-959c-2043-a18e-8af0e90ba98e'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:11:37 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNodePrototype | contextNodePrototype definitionContent]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)