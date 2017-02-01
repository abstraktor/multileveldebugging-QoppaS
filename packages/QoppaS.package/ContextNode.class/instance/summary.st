inspection
summary
	"Answer a one line summary for display in the context tree view"
	^self extensionApiEnabled
			ifFalse: [self contextPart printString]
			ifTrue:  [self group frameTitleOf: self]