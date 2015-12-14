definitions
defcc5db747ff60db48842bf8cc129c7b3d
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:t | (
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
			value: in) do: [:result | out add: result]]); add: (#id->#'cc5db747-ff60-db48-842b-f8cc129c7b3d'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 December 2015 1:51:39 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
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
			value: in) do: [:result | out add: result]]'); yourself)