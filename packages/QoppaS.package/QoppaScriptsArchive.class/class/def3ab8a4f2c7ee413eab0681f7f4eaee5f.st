definitions
def3ab8a4f2c7ee413eab0681f7f4eaee5f
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem evaluatedExpression } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'3ab8a4f2-c7ee-413e-ab06-81f7f4eaee5f'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'24 November 2015 3:39:28 pm'); add: (#creationAuthor->'bak'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem evaluatedExpression } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)