definitions
defb14466a283285c408c989e628ee1de00
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'12 November 2015 6:46:21 pm'); yourself)); add: (#id->#'b14466a2-8328-5c40-8c98-9e628ee1de00'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | { #text -> qoppaReplHistoryItem result }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | { #text -> qoppaReplHistoryItem result }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)