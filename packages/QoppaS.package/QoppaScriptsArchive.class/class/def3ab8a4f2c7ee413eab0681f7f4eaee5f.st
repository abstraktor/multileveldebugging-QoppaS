definitions
def3ab8a4f2c7ee413eab0681f7f4eaee5f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem evaluatedExpression } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3ab8a4f2-c7ee-413e-ab06-81f7f4eaee5f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'bak').
(#creationTimeStamp -> '24 November 2015 3:39:28 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem evaluatedExpression } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})