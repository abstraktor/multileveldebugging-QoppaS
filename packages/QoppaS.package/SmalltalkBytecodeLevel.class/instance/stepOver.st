actions
stepOver
	| newContext |
	newContext := self debugger interruptedProcess completeStep: self debugger selectedContext.
	self debugger resetContext: newContext.