definitions
def4c19feb1c886b7478187c7b68ad29067
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :contextTuple | | context stackIndex |
	context := contextTuple first.
	stackIndex := contextTuple second.
	{debugger. packageInfo. context. stackIndex }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]); add: (#id->#'4c19feb1-c886-b747-8187-c7b68ad29067'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 1:56:36 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :contextTuple | | context stackIndex |
	context := contextTuple first.
	stackIndex := contextTuple second.
	{debugger. packageInfo. context. stackIndex }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]'); yourself)