as yet unclassified
runDebugged: aBlock
aBlock on: UnhandledError do: [:ue| 
	| topCtxt e |
	e := ue exception.
	
	"check if error appeared in current process"
	topCtxt := Processor activeProcess isActiveProcess ifTrue: [thisContext] ifFalse: [self suspendedContext].
	(topCtxt hasContext: e signalerContext) ifFalse: [^ self error: 'context not in process'].
	
	"run the script #multilevelDebugger with a debugger object"
	#multilevelDebugger 
		openScriptWith: {Debugger new 
			process: Processor activeProcess 
			controller: nil 
			context: e signalerContext;
			expandStack} ].