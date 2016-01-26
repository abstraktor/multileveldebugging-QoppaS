definitions
defef8d8c674966bf4c90daae7544d92b0b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ef8d8c67-4966-bf4c-90da-ae7544d92b0b').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'df324b31-b8cd-46a8-b79b-3cc8e457d053').
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '8 December 2015 11:44:28 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]')})