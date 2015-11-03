as yet unclassified
testSymbolTest
	self assert: true equals: (self eval: '(symbol? a)').
	self assert: false equals: (self eval: '(symbol? ())').