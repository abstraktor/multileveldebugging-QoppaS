toolbuilder
stepOver
	| newContext oldContext |
	oldContext := self debugger selectedContext.
	[newContext := self debugger interruptedProcess
		completeStep: self debugger selectedContext.]
	doWhileTrue: [
		newContext = oldContext and: [
			(rootNode nodesDetect: [:node| node content pc = newContext pc]) isNil]].
	
	self debugger resetContext: newContext