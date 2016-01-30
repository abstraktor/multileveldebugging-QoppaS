definitions
def237f0ae3c4b0e943a98ab9005d57ac62
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :contextArray | debugger] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'237f0ae3-c4b0-e943-a98a-b9005d57ac62').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 2:55:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :contextArray | debugger] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})