as yet unclassified
with: aCollection raiseWhenWriting: targetPos
	^(self with: aCollection)
		raiseIf: [:stream :start :end| start <= targetPos and: [end >= targetPos]];
		yourself