as yet unclassified
levelRepo
	^levelRepo ifNil: [levelRepo := DebuggerLevelRepository newFor: self stack]