as yet unclassified
step: aContextOrBlock configured: configurationBlock
	| debuggedContext process debugger fakeView aContext |
	CommandHistory resetAllHistory.
	Smalltalk garbageCollect.
	
	"convenience in case you forgot to do call asContext"
	aContext := (aContextOrBlock isKindOf: BlockClosure)
		ifTrue: [aContextOrBlock asContext]
		ifFalse: [aContextOrBlock].
	
	debuggedContext := aContext copyStack.
	process := Process forContext: debuggedContext priority: Processor activePriority.

	QoppaScriptsDemo multilevelDebuggerEnabled
		ifFalse: [^process debug: debuggedContext bottomContext title: aContext method sourceString].

	fakeView := FakeViewWindow new. "need to prevent fakeView from being garbage collected until the Debugger has been closed"
	"WorldState addDeferredUIMessage: ["
			"(e isKindOf: Halt) ifTrue: [ debuggedContext := debuggedContext sender step]."
		debugger := Debugger new
						process: process
						controller: nil
						context: debuggedContext;
						expandStack;
						errorWasInUIProcess: false.
		"#multilevelDebugger openScriptWith: {e. debugger interruptedContext contextStack}."
		configurationBlock value: (TBMLD openForDebugger: debugger).
		"add fakeView as dependent so it can become the
		#topView of the debugger"
		fakeView model: debugger.
		debugger addDependent: fakeView.
	"]."