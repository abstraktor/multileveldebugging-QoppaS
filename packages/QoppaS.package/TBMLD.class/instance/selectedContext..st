contexts
selectedContext: newSelectedContext
	selectedContext := newSelectedContext.
	self changed: #selectedContext.
	self changed: #contextCode.