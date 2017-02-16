as yet unclassified
checkCallback: aBlock
	^(self class stateMap at: self) at: #checkCallback put: aBlock