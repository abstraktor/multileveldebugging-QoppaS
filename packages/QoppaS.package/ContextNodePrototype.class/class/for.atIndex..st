as yet unclassified
for: aContextPart atIndex: i
	self assert: [aContextPart isKindOf: MethodContext].
	^ self new
		contextPart: aContextPart;
		stackIndex: i;
		yourself