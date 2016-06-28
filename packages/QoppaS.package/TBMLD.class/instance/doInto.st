user interface
doInto
	"originContext := debugger contextStackTop."
	"["debugger send"] 
		doWhileFalse: [(self selectedLevel includes: (MLDActivation forContext: debugger contextStackTop))
				or: [originContext isDead]]".

	self updateActivations.
	self updateActivations.