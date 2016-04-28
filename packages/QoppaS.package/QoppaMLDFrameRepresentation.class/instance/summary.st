inspection
summary
	^ self extensionApiEnabled
		ifFalse: [DebuggerLevel default frameTitleOf: self contextPart]
		ifTrue:  [group frameTitleOf: self contextPart]