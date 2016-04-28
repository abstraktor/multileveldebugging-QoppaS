as yet unclassified
levelOf: aContext
	^(self levels select: [:level | level includesMethodReference: aContext method methodReference ]) second