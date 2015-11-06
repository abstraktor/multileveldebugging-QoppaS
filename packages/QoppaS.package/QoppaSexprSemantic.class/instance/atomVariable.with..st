as yet unclassified
atomVariable: aNode with: nameNode
	| name |
	name := nameNode interval contents asSymbol.
	^(self lookup: name in: self environment) cdr car