as yet unclassified
testSymbolTest
	self assert: interpreter trueValue equals: (self readAndEvaluate: '(symbol? ''a)').
	self assert: interpreter falseValue equals: (self readAndEvaluate: '(symbol? ''())').