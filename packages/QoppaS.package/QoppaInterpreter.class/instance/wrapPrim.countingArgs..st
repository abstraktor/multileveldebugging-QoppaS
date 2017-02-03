primitives
wrapPrim: aBlock countingArgs: countArgs
	"returns a block that takes one array of arguments for aBlock and checks the arity, and evaluates them"
	self flag: #operativeArguments.
	^QoppaOperative new
		isPrimitive: true;
		block: [:env :args | |evaluatedArgs|
			args := args ifNil: [QoppaWCons empty].
			evaluatedArgs := (args collect: [:arg| self eval: arg in: env]).
			countArgs
				ifFalse: [aBlock value: evaluatedArgs]
				ifTrue: [		
					aBlock numArgs = args size
					ifTrue: [ aBlock valueWithArguments: evaluatedArgs]
					ifFalse: [ QoppaArityMismatchError signal: 'ArityMismatch for', aBlock]]];
		yourself