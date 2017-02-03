as yet unclassified
with: aCollection raiseAtSize: targetSize
	^(self with: aCollection)
		raiseIf: [:stream :start :end| stream size >= targetSize];
		yourself