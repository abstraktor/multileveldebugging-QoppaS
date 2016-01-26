definitions
def3bdb21a26383514bb4f65887ccb56c1f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:exprString :repl | {
	#text -> 'rep it'.
	#clicked -> [ repl evaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3bdb21a2-6383-514b-b4f6-5887ccb56c1f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '12 November 2015 7:34:28 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:exprString :repl | {
	#text -> ''rep it''.
	#clicked -> [ repl evaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})