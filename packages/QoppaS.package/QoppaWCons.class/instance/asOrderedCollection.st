as yet unclassified
asOrderedCollection
	|cur coll|
	self ifEmpty: [^OrderedCollection new].
	coll := OrderedCollection with: self car.
	cur := self.
	[cur := cur cdr] whileNotNil: [
		coll add: cur car.].
	^coll
	"^(OrderedCollection with: self car)
		addAll: (self cdr
			ifNil: [OrderedCollection new]
			ifNotNilDo: [:c| c asOrderedCollection])"