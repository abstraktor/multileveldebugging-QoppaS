as yet unclassified
forContext: aMethodContext
	self assert: [aMethodContext isKindOf: MethodContext].
	^self new
		contextPart: aMethodContext;
		yourself