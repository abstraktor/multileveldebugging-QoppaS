definitions
defd5bcc242e0250b44be938bb88ca6c14a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:debugger | debugger contextVariablesInspector ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d5bcc242-e025-0b44-be93-8bb88ca6c14a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 2:50:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:debugger | debugger contextVariablesInspector ]]
		value: in) do: [:result | out addAll: result asList]]')})