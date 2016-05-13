as yet unclassified
levelOf: anActivation
	^(self levels detect: [:level |
		level isAllContainingLevel not and:
		(level includes: anActivation) ]
		ifNone: [self default])