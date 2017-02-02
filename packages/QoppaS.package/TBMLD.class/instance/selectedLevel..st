selection
selectedLevel: newSelectedLevel
	selectedLevel := newSelectedLevel.
	
	self updateSelectedActivations.
	
	self changed: #selectedLevel.