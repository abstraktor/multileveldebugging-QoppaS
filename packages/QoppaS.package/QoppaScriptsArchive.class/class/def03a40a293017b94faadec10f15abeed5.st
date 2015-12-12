definitions
def03a40a293017b94faadec10f15abeed5
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> 'step'.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'03a40a29-3017-b94f-aade-c10f15abeed5'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'11 December 2015 11:42:41 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> ''step''.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)