as yet unclassified
boolPrim
	^[:args| | cond falseBody trueBody |
		cond := args first.
		trueBody := args second.
		falseBody := args third.
		self assert: args size = 3.
		(self eval: cond in: self environment) = #t
			ifTrue: [self eval: trueBody in: self environment]
			ifFalse: [self eval: falseBody in: self environment]]