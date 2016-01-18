as yet unclassified
for: aMethodContext at: flatStackIndex
	^self for: aMethodContext
		in: (PackageOrganizer default packageOfMethod: aMethodContext method methodReference)
		at: flatStackIndex