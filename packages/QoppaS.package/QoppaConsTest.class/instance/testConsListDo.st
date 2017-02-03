as yet unclassified
testConsListDo
	| list index |
	list := QoppaWCons newListFrom: {1. 2. 3}.
	index := 1.
	list consListDo: [:each |
		self assert: each isCons.
		self assert: each car = index.
		index := index + 1.
		self assert: (each cdr isNil or: [each cdr isCons])]