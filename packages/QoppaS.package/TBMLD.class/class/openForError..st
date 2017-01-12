as yet unclassified
openForError: exception 
	| errorWasInUIProcess process debugger fakeView debuggedContext |

	CommandHistory resetAllHistory.
	Smalltalk garbageCollect.

	QoppaScriptsDemo multilevelDebuggerEnabled
		ifFalse: [^ Processor activeProcess debug: exception signalerContext title: exception description].

	debuggedContext := exception signalerContext.
	"check if error appeared in current process"
	process := (thisContext hasContext: debuggedContext)
		ifTrue: [Processor activeProcess]
		ifFalse: [Process forContext: debuggedContext priority: Processor activePriority].
	
	errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: process.
	fakeView := FakeViewWindow new. "need to prevent fakeView from being garbage collected until the Debugger has been closed"
	WorldState addDeferredUIMessage: [
		"(e isKindOf: Halt) ifTrue: [ debuggedContext := debuggedContext sender step]."
		debugger := Debugger new
			process: process
			controller: nil
			context: debuggedContext;
			expandStack;
			errorWasInUIProcess: errorWasInUIProcess.
		
		TBMLD openForError: exception debugger: debugger.
		"add fakeView as dependent so it can become the #topView of the debugger"
		fakeView model: debugger.
		debugger addDependent: fakeView.
	].
	"debug me"
	process suspend.
	^exception isResumable
		ifTrue: [exception resume]
		ifFalse: [exception]