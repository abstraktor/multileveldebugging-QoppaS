decoration
icon
	QoppaMLDGroupRepresentation mldIconsEnabled
		ifTrue: [	^(DebuggerLevel forGroup: group) icon]
		ifFalse: [^nil]