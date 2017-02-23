as yet unclassified
hasChildren: anActivation
	^(anActivation basicHasChildren) or: 
		((self includes: anActivation) and: [#smalltalk = (anActivation at: #viewer ifAbsent: nil)])