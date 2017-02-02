as yet unclassified
contentViewerSpecsWith: aMorphicToolBuilder 
	^Dictionary new
		addAll: ((self levels
			collect: [:level| level contentViewerSpecsWith: aMorphicToolBuilder])
			concatenation);
		yourself