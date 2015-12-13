definitions
def4b7e3048663db94cbd85b707bf78c41d
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex | context ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#id->#'4b7e3048-663d-b94c-bd85-b707bf78c41d'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 2:04:02 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:context :stackIndex | context ] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)