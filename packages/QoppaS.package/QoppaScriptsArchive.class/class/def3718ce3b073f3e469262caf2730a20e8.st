definitions
def3718ce3b073f3e469262caf2730a20e8
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:methodContext | ContextNodePrototype for: methodContext]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'3718ce3b-073f-3e46-9262-caf2730a20e8'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 January 2016 5:04:27 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:methodContext | ContextNodePrototype for: methodContext]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)