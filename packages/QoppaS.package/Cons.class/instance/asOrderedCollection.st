as yet unclassified
asOrderedCollection
	|cur coll|
	coll := OrderedCollection with: self car.
	cur := self cdr.
	[cur] whileNotNil: [
		coll add: cur car.
		cur := cur cdr. ].
	^coll
	"^(OrderedCollection with: self car)
		addAll: (self cdr
			ifNil: [OrderedCollection new]
			ifNotNilDo: [:c| c asOrderedCollection])"