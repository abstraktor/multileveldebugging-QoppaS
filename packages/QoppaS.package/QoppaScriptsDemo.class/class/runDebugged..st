as yet unclassified
runDebugged: aBlock 
	self multilevelDebuggerEnabled
		ifFalse: [^ aBlock value].
	^ aBlock
		on: UnhandledError
		do: [:ue | 
			| topCtxt e errorWasInUIProcess process debugger mldwindow |
			e := ue exception.
			process := Processor activeProcess.
			"check if error appeared in current process"
			topCtxt := process isActiveProcess
						ifTrue: [thisContext]
						ifFalse: [self suspendedContext].
			(topCtxt hasContext: e signalerContext)
				ifFalse: [^ self error: 'context not in process'].
			"run the script #multilevelDebugger with a debugger object"
			debugger := Debugger new
						process: process
						controller: nil
						context: e signalerContext;
						 expandStack.
			mldwindow := #multilevelDebugger openScriptWith: {debugger}.
			"add mldwindow as dependent so it can become the
			#topView of the debugger"
			debugger addDependent: mldwindow.
			"debug me"
			errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: process.
			process suspend.
			ue exception isResumable
				ifTrue: [ue exception resume]
				ifFalse: [ue exception]]