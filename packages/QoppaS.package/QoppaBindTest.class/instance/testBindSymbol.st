as yet unclassified
testBindSymbol
	self assert: '((#a 2))' equals: (QoppaSexprSemantic new bind: #'a' to: 2) qoppaPrintString 