user interface
doCompareActivation
	| part primitive arguments |
	part := self selectedActivation contextPart copyStack step.
	primitive := part method primitive.
	self assert: primitive ~= 0.
	arguments := part arguments.
	
	self inform: (
		'Running VM: ', Character tab, (self run: part), Character cr, 
		'Fallback: ', Character tab, (self runFallback: part), Character cr, 
		'Slang: ', Character tab, (self simulateSlang: primitive rcv: part receiver args: arguments)).