contexts
selectedContext
	(selectedContext isNil and: (self selectedLevel levelName = #All))
			ifTrue: [selectedContext := self contexts first].
			
	^selectedContext