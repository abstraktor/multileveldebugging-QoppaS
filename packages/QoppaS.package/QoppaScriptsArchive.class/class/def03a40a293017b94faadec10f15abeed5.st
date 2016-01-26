definitions
def03a40a293017b94faadec10f15abeed5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> 'step'.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'03a40a29-3017-b94f-aade-c10f15abeed5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '11 December 2015 11:42:41 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:debugger | {
	#text -> ''step''.
	#clicked -> [debugger send.
		ViEventNotifier trigger: #debuggerChanged]
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})