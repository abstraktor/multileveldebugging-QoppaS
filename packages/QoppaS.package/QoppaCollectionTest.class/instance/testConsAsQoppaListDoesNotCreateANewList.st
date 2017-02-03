as yet unclassified
testConsAsQoppaListDoesNotCreateANewList
	| cons list |
	list := (cons := QoppaWCons newListFrom: {1. 2. 3}) asQoppaList.
	self assert: list == cons