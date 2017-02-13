primitives
vauPrim
	"Return the primitive operative vau."
	self flag: #operativeArguments.
	^ QoppaOperative new
		block: [:staticEnvironment :args | | "args: " body envParam params | 
			self assert: (args size = 3).
			params := args first.
			envParam := args second.
			body := args third.
			self vau: body withParameters: params withEnvironmentParameter: envParam in: staticEnvironment];
		yourself
	