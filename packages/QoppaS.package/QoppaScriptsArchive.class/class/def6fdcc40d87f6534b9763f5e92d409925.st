definitions
def6fdcc40d87f6534b9763f5e92d409925
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:exprString :qoppaReplHistoryItem :qoppaRepl | {
	#text -> 'rep it'.
	#clicked -> [ qoppaRepl evaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'6fdcc40d-87f6-534b-9763-f5e92d409925'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'19 November 2015 4:05:33 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:exprString :qoppaReplHistoryItem :qoppaRepl | {
	#text -> ''rep it''.
	#clicked -> [ qoppaRepl evaluate: exprString.
		ViEventNotifier trigger: #qoppaReplRepItClicked ].
}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)