as yet unclassified
named: levelName
"returns the debugger-level that matches the levelName"
	DebuggerLevel allSubclassesDo: [:c|
		c new levelName = levelName ifTrue: [^c new]].
	
	^self new