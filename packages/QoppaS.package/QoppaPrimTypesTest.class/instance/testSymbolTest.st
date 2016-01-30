as yet unclassified
testSymbolTest
	self assert: qoppa trueValue equals: (self operate: '(symbol? ''a)').
	self assert: qoppa falseValue equals: (self operate: '(symbol? ''())').