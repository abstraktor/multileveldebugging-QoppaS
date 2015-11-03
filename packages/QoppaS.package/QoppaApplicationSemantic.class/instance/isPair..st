as yet unclassified
isPair: args
	^(args first isKindOf: Collection) and: (args first isEmpty not)