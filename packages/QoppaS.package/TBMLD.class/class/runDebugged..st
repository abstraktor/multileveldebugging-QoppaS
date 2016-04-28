as yet unclassified
runDebugged: aBlock 
	QoppaScriptsDemo multilevelDebuggerEnabled
		ifFalse: [^ aBlock
				on: UnhandledError
				do: [:ue| 
					Processor activeProcess
						debug: ue exception signalerContext 
						title: ue exception description]].
	^ aBlock
		on: UnhandledError
		do: [:ue | 
			| topCtxt e errorWasInUIProcess process debugger fakeView debuggedContext |
			e := ue exception.
			debuggedContext := e signalerContext.
			process := Processor activeProcess.
			"check if error appeared in current process"
			topCtxt := process isActiveProcess
						ifTrue: [thisContext]
						ifFalse: [self suspendedContext].
			(topCtxt hasContext: debuggedContext)
				ifFalse: [^ self error: 'context not in process'].
			"run the script #multilevelDebugger with a debugger object"
			errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: process.
			fakeView := FakeViewWindow new. "need to prevent fakeView from being garbage collected until the Debugger has been closed"
			WorldState addDeferredUIMessage: [
				debugger := Debugger new
							process: process
							controller: nil
							context: debuggedContext;
							expandStack;
							errorWasInUIProcess: errorWasInUIProcess.
				self openForError: e debugger: debugger.
				"add fakeView as dependent so it can become the
				#topView of the debugger"
				fakeView model: debugger.
				debugger addDependent: fakeView.
			].
			"debug me"
			process suspend.
			ue exception isResumable
				ifTrue: [ue exception resume]
				ifFalse: [ue exception]]