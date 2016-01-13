definitions
def19c04e9f542cdc4ea488570272064fd5
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | | helper | helper := ContextsHelperForVivideScripts new.
	objects collect: [:contextNodePrototype | { contextNodePrototype.
	helper methodTimestamp: contextNodePrototype contextPart }]]
		value: in) do: [:result | out add: result asList]]); add: (#id->#'19c04e9f-542c-dc4e-a488-570272064fd5'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 January 2016 4:56:22 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | | helper | helper := ContextsHelperForVivideScripts new.
	objects collect: [:contextNodePrototype | { contextNodePrototype.
	helper methodTimestamp: contextNodePrototype contextPart }]]
		value: in) do: [:result | out add: result asList]]'); yourself)