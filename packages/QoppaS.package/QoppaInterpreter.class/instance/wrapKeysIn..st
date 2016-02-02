private-utilities
wrapKeysIn: aCollectionOfAssociations
	^ aCollectionOfAssociations collect: [:each | (QoppaWSymbol for: each key) -> each value]