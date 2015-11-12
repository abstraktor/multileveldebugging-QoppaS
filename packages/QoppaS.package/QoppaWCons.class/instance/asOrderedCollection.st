as yet unclassified
asOrderedCollection
	|cur coll|
	coll := OrderedCollection with: self car.
	cur := self.
	[cur isCons ifTrue: [cur := cur cdr] ifFalse: [coll add: cur. nil]]
		whileNotNil: [coll add: cur car].
	^coll
	"^(OrderedCollection with: self car)
		addAll: (self cdr
			ifNil: [OrderedCollection new]
			ifNotNilDo: [:c| c asOrderedCollection])"