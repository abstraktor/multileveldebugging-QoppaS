as yet unclassified
testSymbolTest
	self assert: true equals: (self operate: '(symbol? #a)').
	self assert: false equals: (self operate: '(symbol? ())').