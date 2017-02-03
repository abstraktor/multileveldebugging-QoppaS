as yet unclassified
applyGroupLabels: aCollectionOfFrames
	self flag: 'Im going to hell for this'.
	^aCollectionOfFrames do: [:actualActivation|
		actualActivation at: #viewer put: #smalltalkParseNode]