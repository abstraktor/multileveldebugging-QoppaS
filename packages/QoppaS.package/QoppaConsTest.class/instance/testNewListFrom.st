as yet unclassified
testNewListFrom
	| cons |
	cons := QoppaWCons newListFrom: {1. 2. 3}.
	Transcript show: cons printString.
	self assert: cons car == 1.
	self assert: cons cdr isCons.
	self assert: cons cdr car == 2.
	self assert: cons cdr cdr isCons.
	self assert: cons cdr cdr car == 3.
	self assert: cons cdr cdr cdr isNil