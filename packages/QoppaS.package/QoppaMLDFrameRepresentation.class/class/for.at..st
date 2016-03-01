as yet unclassified
for: aMethodContext at: flatStackIndex
	self assert: [aMethodContext isKindOf: MethodContext].
	^self for: aMethodContext
		in: (PackageOrganizer default packageOfMethod: aMethodContext method methodReference)
		at: flatStackIndex