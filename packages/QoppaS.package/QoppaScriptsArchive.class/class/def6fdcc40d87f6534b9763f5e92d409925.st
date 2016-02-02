definitions
def6fdcc40d87f6534b9763f5e92d409925
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:exprString :qoppaReplHistoryItem :qoppaRepl | {
	#text -> 'rep it'.
	#clicked -> [ qoppaRepl readAndEvaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6fdcc40d-87f6-534b-9763-f5e92d409925').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '19 November 2015 4:05:33 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:exprString :qoppaReplHistoryItem :qoppaRepl | {
	#text -> ''rep it''.
	#clicked -> [ qoppaRepl readAndEvaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})