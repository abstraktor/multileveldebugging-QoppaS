as yet unclassified
for: aMethodContext in: group at: flatStackIndex
	^self new
		contextPart: aMethodContext;
		group: group;
		stackIndex: flatStackIndex;
		yourself