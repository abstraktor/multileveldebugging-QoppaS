model
selectedLevel: newSelectedLevel
	selectedLevel := newSelectedLevel.
	self changed: #selectedLevel.
	self changed: #contexts.