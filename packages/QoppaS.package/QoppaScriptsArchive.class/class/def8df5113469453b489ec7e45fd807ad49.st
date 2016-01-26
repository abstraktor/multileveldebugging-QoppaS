definitions
def8df5113469453b489ec7e45fd807ad49
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> 'Over'.
	#clicked -> [[ debugger doStep. ViEventNotifier trigger: #debuggerChanged ]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8df51134-6945-3b48-9ec7-e45fd807ad49').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 2:41:06 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> ''Over''.
	#clicked -> [[ debugger doStep. ViEventNotifier trigger: #debuggerChanged ]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})