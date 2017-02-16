as yet unclassified
on: aCollection raiseWhenPuttingAt: needleIndex
	^(self on: aCollection)
		raiseIf: [:index :value | 1 halt. needleIndex = index];
		yourself