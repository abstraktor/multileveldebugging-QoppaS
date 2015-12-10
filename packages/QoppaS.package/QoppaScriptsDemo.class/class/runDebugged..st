as yet unclassified
runDebugged: aBlock
^aBlock on: UnhandledError do: [:ue| 
	| topCtxt e errorWasInUIProcess process |
	e := ue exception.
	process := Processor activeProcess.

	"check if error appeared in current process"
	topCtxt := process isActiveProcess ifTrue: [thisContext] ifFalse: [self suspendedContext].
	(topCtxt hasContext: e signalerContext) ifFalse: [^ self error: 'context not in process'].
	
	"run the script #multilevelDebugger with a debugger object"
	#multilevelDebugger 
		openScriptWith: {Debugger new 
			process: process 
			controller: nil 
			context: e signalerContext;
			expandStack}.
			
	"debug me"
	errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: process.
	process suspend.
	^ue exception].