as yet unclassified
testNewWithSize
	| cons |
	cons := QoppaWCons new: 3.
	self assert: (cons isCons and: [cons isProperList]).
	self assert: cons size = 3.
	1 to: 3 do: [:i | self assert: (cons at: i) isNil].