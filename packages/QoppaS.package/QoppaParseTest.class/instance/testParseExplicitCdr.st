as yet unclassified
testParseExplicitCdr
	self assert: (QoppaWCons withCar: 1 cdr: 2) equals: (self operate: '(1 . 2)').