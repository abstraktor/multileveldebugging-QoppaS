as yet unclassified
detailsOf: activation
	^String streamContents: [:s | self compileActivation: activation toStream: s].