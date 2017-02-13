as yet unclassified
testCollectionAsQoppaList
	| list |
	list := {1. 2. 3} asQoppaList.
	self assert: list isCons.
	self assert: list isProperList.
	self assert: {1. 2. 3} equals: list asArray