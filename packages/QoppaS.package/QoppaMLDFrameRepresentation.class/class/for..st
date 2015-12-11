as yet unclassified
for: aMethodContext
	^self for: aMethodContext
		in: (PackageOrganizer default packageOfMethod: aMethodContext method methodReference)