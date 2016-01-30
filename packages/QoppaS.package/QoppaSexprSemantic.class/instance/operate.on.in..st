interpreting
operate: aQoppaOperative on: operands in: env
	|res formerEnv|
	"todo: how to do it nicer?"
	formerEnv := self environment.
	self environment: env.	
	res := aQoppaOperative in: env operateOn: operands.
	self environment: formerEnv.
	^res