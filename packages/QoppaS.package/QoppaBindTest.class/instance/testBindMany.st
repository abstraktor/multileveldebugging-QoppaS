as yet unclassified
testBindMany
	| bound names values |
	names := QoppaWCons newListFrom: {QoppaWSymbol for: #x.  QoppaWSymbol for: #y}.
	values := QoppaWCons newListFrom: {1. 2}.
	bound := (interpreter bind: names to: values) .
	self assert: '((x 1) (y 2))' equals: bound qoppaPrintString 