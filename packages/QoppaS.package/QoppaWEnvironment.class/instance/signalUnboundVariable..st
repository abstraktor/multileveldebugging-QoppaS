printing
signalUnboundVariable: aSymbol
	| errorMessage |
	errorMessage := aSymbol qoppaPrintString, ' is not bound'. "for the debugger UI"
	QoppaUnboundVariableFailure signal: errorMessage