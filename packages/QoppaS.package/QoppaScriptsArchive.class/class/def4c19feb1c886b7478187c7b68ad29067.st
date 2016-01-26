definitions
def4c19feb1c886b7478187c7b68ad29067
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :contextTuple | | context stackIndex |
	context := contextTuple first.
	stackIndex := contextTuple second.
	{debugger. packageInfo. context. stackIndex }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4c19feb1-c886-b747-8187-c7b68ad29067').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 1:56:36 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo :contextTuple | | context stackIndex |
	context := contextTuple first.
	stackIndex := contextTuple second.
	{debugger. packageInfo. context. stackIndex }] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]')})