definitions
def780ee3a61af6b640931f98ca40b20484
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | "This is only for observability"
	{ #text -> ('Idx: ', debugger contextStackIndex) }]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'780ee3a6-1af6-b640-931f-98ca40b20484').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 2:36:30 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | "This is only for observability"
	{ #text -> (''Idx: '', debugger contextStackIndex) }]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})