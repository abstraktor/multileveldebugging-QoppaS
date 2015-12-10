as yet unclassified
operate: operatorBlock on: operands in: env
	|res formerEnv|
	"todo: how to do it nicer?"
	formerEnv := self environment.
	self environment: env.	
	res := operatorBlock value: operands asList.
	self environment: formerEnv.
	^res