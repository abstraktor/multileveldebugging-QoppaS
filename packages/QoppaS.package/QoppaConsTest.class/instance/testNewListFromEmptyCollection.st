as yet unclassified
testNewListFromEmptyCollection
	| cons |
	cons := QoppaWCons newListFrom: OrderedCollection new.
	self assert: cons == nil.