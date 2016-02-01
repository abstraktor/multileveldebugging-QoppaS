primitives
vau: body withParameters: params withEnvironmentParameter: envParam in: staticEnvironment
	self flag: #operativeArguments.
	^ QoppaOperative new
		parameters: params;
		"source: aNode interval contents;"
		block: [:dynamicEnvironment :operands| | newEnvironment newFrame |
			"self assert: (operands size = params size)."
			newFrame := self bind: (self cons: envParam with: params) to: (self cons: dynamicEnvironment with: operands).
			newEnvironment := (QoppaWCons withCar: newFrame cdr: staticEnvironment).
			"evaluate in static environment with newFrame on top"
			self eval: body in: newEnvironment];
		yourself