primitives
boolPrim
	self flag: #operativeArguments.
	^QoppaOperative new
		isPrimitive: true;
		block: [:env :args| | cond falseBody trueBody |
			cond := args first.
			trueBody := args second.
			falseBody := args third.
			self assert: args size = 3.
			(self eval: cond in: env) = self trueValue
				ifTrue: [self eval: trueBody in: env]
				ifFalse: [self eval: falseBody in: env]];
		yourself