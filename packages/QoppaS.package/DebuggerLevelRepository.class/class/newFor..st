as yet unclassified
newFor: aContextStack
	^self new
		levels: (self generateLevelsFor: aContextStack);
		yourself