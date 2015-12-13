definitions
def09e1c9601bbb7041acbbedc31abeebd7
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> 'proceed'.
	#clicked -> [[debugger proceed]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'09e1c960-1bbb-7041-acbb-edc31abeebd7'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 1:47:25 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | { #text -> ''proceed''.
	#clicked -> [[debugger proceed]]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)