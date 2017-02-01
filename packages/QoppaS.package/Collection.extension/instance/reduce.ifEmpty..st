*QoppaS
reduce: reductionBlock ifEmpty: emptyBlock
	self ifEmpty: [^emptyBlock value].
	
	^self reduce: reductionBlock