definitions
def59a385325590524489966ece55e8fe50
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo | { packageInfo. debugger interruptedContext contextStack } asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'59a38532-5590-5244-8996-6ece55e8fe50').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 12:12:16 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:debugger :packageInfo | { packageInfo. debugger interruptedContext contextStack } asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})