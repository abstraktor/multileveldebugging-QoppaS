as yet unclassified
testBindManyNested
	| bound names values |
	names := QoppaWCons newListFrom: {#x. #y}.
	values := QoppaWCons newListFrom: {1. QoppaWCons newListFrom: {2. 4}}.
	bound := (QoppaSexprSemantic new bind: names to: values) .
	self assert: '((#y (2 4)) (#x 1))' equals: bound qoppaPrintString 