as yet unclassified
testBindManyNested
	| bound names values |
	names := QoppaWCons newListFrom: {QoppaWSymbol for: #x. QoppaWSymbol for: #y}.
	values := QoppaWCons newListFrom: {1. QoppaWCons newListFrom: {2. 4}}.
	bound := (interpreter bind: names to: values) .
	self assert: '((x 1) (y (2 4)))' equals: bound qoppaPrintString 