as yet unclassified
frameTitleOf: group for: aMethodContext
	^self extensionApiEnabled
		ifFalse: [DebuggerLevel default frameTitleOf: aMethodContext]
		ifTrue:  [(DebuggerLevel forGroup: group) frameTitleOf: aMethodContext].