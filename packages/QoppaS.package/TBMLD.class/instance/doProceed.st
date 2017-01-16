user interface
doProceed
	self isVerifierEnabled
		ifTrue: [self doProceedComparing]
		ifFalse: [
			self topView delete.
			^debugger proceed]