definitions
def3abcce0ebace57418449eb73c2e9fa0c
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> 'step'.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'3abcce0e-bace-5741-8449-eb73c2e9fa0c'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'dcd174f7-67e1-7e4b-aa9f-eb04df1bad00'); add: (#creationTimeStamp->'9 December 2015 6:19:08 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> ''step''.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)