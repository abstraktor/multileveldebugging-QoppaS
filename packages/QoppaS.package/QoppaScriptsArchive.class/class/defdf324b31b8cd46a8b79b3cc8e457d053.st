definitions
defdf324b31b8cd46a8b79b3cc8e457d053
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'df324b31-b8cd-46a8-b79b-3cc8e457d053').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'ck').
(#creationTimeStamp -> '29 November 2015 3:53:51 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]')})