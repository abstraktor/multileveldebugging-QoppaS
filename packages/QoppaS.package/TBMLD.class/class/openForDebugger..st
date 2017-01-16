as yet unclassified
openForDebugger: debugger
	| tbmld |
	tbmld := self new debugger: debugger.
	ToolBuilder default open: tbmld.
	^tbmld