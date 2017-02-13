as yet unclassified
testNewListFromNil
	| cons |
	cons := QoppaWCons newListFrom: nil.
	self assert: cons == nil