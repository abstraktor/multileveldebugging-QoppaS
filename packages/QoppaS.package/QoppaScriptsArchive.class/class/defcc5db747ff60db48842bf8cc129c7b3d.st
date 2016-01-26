definitions
defcc5db747ff60db48842bf8cc129c7b3d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | {
	#text -> 'step'.
	#clicked -> [[ | originContext |
		originContext := debugger contextStackTop.
		[debugger send] 
			doWhileFalse: [(packageInfo includesMethodReference: debugger contextStackTop method methodReference)
				or: [originContext isDead]].
		ViEventNotifier trigger: #debuggerChanged]]
	}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'cc5db747-ff60-db48-842b-f8cc129c7b3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '13 December 2015 1:51:39 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:debugger :packageInfo :context :index | {
	#text -> ''step''.
	#clicked -> [[ | originContext |
		originContext := debugger contextStackTop.
		[debugger send] 
			doWhileFalse: [(packageInfo includesMethodReference: debugger contextStackTop method methodReference)
				or: [originContext isDead]].
		ViEventNotifier trigger: #debuggerChanged]]
	}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]')})