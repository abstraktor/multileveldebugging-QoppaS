as yet unclassified
step: aContext 

	| debuggedContext process debugger fakeView |
	CommandHistory resetAllHistory.
	Smalltalk garbageCollect.
	
	debuggedContext := aContext.
	process := Process forContext: debuggedContext priority: Processor activePriority.

	QoppaScriptsDemo multilevelDebuggerEnabled
		ifFalse: [^process debug: debuggedContext title: aContext method sourceString].

	fakeView := FakeViewWindow new. "need to prevent fakeView from being garbage collected until the Debugger has been closed"
	WorldState addDeferredUIMessage: [
			"(e isKindOf: Halt) ifTrue: [ debuggedContext := debuggedContext sender step]."
		debugger := Debugger new
						process: process
						controller: nil
						context: debuggedContext;
						expandStack;
						errorWasInUIProcess: false.
		"#multilevelDebugger openScriptWith: {e. debugger interruptedContext contextStack}."
		TBMLD openForDebugger: debugger.
		"add fakeView as dependent so it can become the
		#topView of the debugger"
		fakeView model: debugger.
		debugger addDependent: fakeView.
	].