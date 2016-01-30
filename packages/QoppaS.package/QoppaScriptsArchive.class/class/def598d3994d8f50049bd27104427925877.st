definitions
def598d3994d8f50049bd27104427925877
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:contextVariablesInspector | contextVariablesInspector fieldList]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'598d3994-d8f5-0049-bd27-104427925877').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 2:52:19 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:contextVariablesInspector | contextVariablesInspector fieldList]]
		value: in) do: [:result | out addAll: result asList]]')})