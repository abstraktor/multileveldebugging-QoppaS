toolbuilder
selectedContentLineIndex
	self contentLines doWithIndex: [:line :lineIndex|
		(line beginsWith: self repo selectedActivation contextPart pc asString)
			ifTrue: [^lineIndex]].
		
	^0