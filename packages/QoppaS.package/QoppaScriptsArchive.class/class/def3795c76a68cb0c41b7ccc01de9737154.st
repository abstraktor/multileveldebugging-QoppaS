definitions
def3795c76a68cb0c41b7ccc01de9737154
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3795c76a-68cb-0c41-b7cc-c01de9737154').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '8 December 2015 11:44:28 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack]]
		value: in) do: [:result | out addAll: result asList]]')})