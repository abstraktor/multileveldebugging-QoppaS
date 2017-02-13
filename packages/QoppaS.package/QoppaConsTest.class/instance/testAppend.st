as yet unclassified
testAppend
	| cons1 cons2 consAppended |
	cons1 := QoppaWCons newListFrom: {1. 2}.
	cons2 := QoppaWCons newListFrom: {2. 3}.
	consAppended := cons1 append: cons2.
	self assert: (consAppended isCons and: [consAppended isProperList]).
	self assert: consAppended size = (cons1 size + cons2 size).
	self assert: consAppended asArray = {1. 2. 2. 3}.
	self assert: consAppended cdr cdr == cons2.