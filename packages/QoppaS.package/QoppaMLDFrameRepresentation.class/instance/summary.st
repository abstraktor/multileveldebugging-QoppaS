inspection
summary
	^ self extensionApiEnabled
		ifFalse: [DebuggerLevel default frameTitleOf: self contextPart]
		ifTrue:  [(DebuggerLevel forGroup: group) frameTitleOf: self contextPart]