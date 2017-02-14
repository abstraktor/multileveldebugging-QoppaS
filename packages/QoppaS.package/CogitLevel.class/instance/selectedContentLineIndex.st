toolbuilder
selectedContentLineIndex
	| pc |
	pc := self repo selectedActivation contextPart pc asString.
	self contentLines doWithIndex: [:line :lineIndex|
		(line asString matchesRegex:  '^[a-zA-Z].*', pc, '.*')
			ifTrue: [^lineIndex]].
		
	^0