definitions
defbd3c25baae71e146ba1ae19dc749aca7
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :methodContext | {debugger. packageInfo. methodContext} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#id->#'bd3c25ba-ae71-e146-ba1a-e19dc749aca7'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'14 December 2015 8:57:33 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :methodContext | {debugger. packageInfo. methodContext} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)