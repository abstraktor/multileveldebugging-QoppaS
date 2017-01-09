decoration
icon
	"Answer an icon to be shown next to my summary in the context tree"
	^ properties at: #icon ifAbsent: [
		QoppaMLDGroupRepresentation mldIconsEnabled
			ifTrue: [	^self group icon]
			ifFalse: [^nil]]