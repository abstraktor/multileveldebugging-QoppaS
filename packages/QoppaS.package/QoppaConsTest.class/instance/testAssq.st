as yet unclassified
testAssq
	| alist assoc |
	alist := QoppaWCons newDictFrom: {#a -> 1. #b -> 2}.
	assoc := alist assq: #b.
	self assert: assoc car == #b.
	self assert: assoc cdr car == 2