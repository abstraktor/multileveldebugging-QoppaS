as yet unclassified
for: aContextPart
	self assert: [aContextPart isKindOf: MethodContext].
	^ self new
		contextPart: aContextPart;
		yourself