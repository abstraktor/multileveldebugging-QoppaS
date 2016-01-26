definitions
def3abcce0ebace57418449eb73c2e9fa0c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> 'proceed'.
	#clicked -> [debugger proceed]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3abcce0e-bace-5741-8449-eb73c2e9fa0c').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'dcd174f7-67e1-7e4b-aa9f-eb04df1bad00').
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 6:19:08 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> ''proceed''.
	#clicked -> [debugger proceed]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})