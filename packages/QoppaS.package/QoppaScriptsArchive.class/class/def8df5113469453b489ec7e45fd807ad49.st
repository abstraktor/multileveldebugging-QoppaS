definitions
def8df5113469453b489ec7e45fd807ad49
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> 'Over'.
	#clicked -> [[ debugger doStep. ViEventNotifier trigger: #debuggerChanged ]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'8df51134-6945-3b48-9ec7-e45fd807ad49'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 2:41:06 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> ''Over''.
	#clicked -> [[ debugger doStep. ViEventNotifier trigger: #debuggerChanged ]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)