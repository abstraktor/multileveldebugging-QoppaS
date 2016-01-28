definitions
def10bb08e3c29229438ac509d9bf6c3c55
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:association | { #text -> association key } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'10bb08e3-c292-2943-8ac5-09d9bf6c3c55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '27 January 2016 4:50:46 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:association | { #text -> association key } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})