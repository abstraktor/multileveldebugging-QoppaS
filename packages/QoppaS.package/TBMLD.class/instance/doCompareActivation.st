actions
doCompareActivation
	| part primitive arguments |
	part := self selectedActivation contextPart.
	primitive := part method primitive.
	self assert: primitive ~= 0.
	arguments := part arguments.
	
	self verifier
		verifyPrimitive: part method primitive
		rcv: part receiver
		args: part arguments.