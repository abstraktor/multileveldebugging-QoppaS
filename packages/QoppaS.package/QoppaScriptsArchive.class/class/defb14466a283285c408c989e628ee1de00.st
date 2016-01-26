definitions
defb14466a283285c408c989e628ee1de00
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text-> (qoppaReplHistoryItem result printStringLimitedTo: 30)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b14466a2-8328-5c40-8c98-9e628ee1de00').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '12 November 2015 6:46:21 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text-> (qoppaReplHistoryItem result printStringLimitedTo: 30)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})