as yet unclassified
hasChildren: anActivation
	^(anActivation basicHasChildren) or: [self includes: anActivation]