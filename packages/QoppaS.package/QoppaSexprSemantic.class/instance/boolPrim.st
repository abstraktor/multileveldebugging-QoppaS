primitives
boolPrim
	self flag: #operativeArguments.
	^QoppaOperative new
		isPrimitive: true;
		block: [:args| | cond falseBody trueBody |
			cond := args first.
			trueBody := args second.
			falseBody := args third.
			self assert: args size = 3.
			(self eval: cond in: self environment) = self trueValue
				ifTrue: [self eval: trueBody in: self environment]
				ifFalse: [self eval: falseBody in: self environment]];
		yourself