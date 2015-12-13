definitions
def780ee3a61af6b640931f98ca40b20484
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | "This is only for observability"
	{ #text -> ('Idx: ', debugger contextStackIndex) }]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'780ee3a6-1af6-b640-931f-98ca40b20484'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 2:36:30 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | "This is only for observability"
	{ #text -> (''Idx: '', debugger contextStackIndex) }]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)