as yet unclassified
for: aMethodContext in: group at: flatStackIndex
	self assert: [aMethodContext isKindOf: MethodContext].
	^self new
		contextPart: aMethodContext;
		group: group;
		stackIndex: flatStackIndex;
		yourself