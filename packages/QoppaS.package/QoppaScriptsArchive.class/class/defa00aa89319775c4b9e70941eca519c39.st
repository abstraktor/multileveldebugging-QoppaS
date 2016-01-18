definitions
defa00aa89319775c4b9e70941eca519c39
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :association :array | {debugger. association. array} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#id->#'a00aa893-1977-5c4b-9e70-941eca519c39'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'18 January 2016 5:43:14 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :association :array | {debugger. association. array} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)