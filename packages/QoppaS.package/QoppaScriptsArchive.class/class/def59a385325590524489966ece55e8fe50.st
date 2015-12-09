definitions
def59a385325590524489966ece55e8fe50
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'9 December 2015 12:12:16 am'); yourself)); add: (#id->#'59a38532-5590-5244-8996-6ece55e8fe50'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo | { packageInfo. debugger interruptedContext contextStack } asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo | { packageInfo. debugger interruptedContext contextStack } asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)