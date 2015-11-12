as yet unclassified
testBindMany
	| bound names values |
	names := QoppaWCons newListFrom: {#x. #y}.
	values := QoppaWCons newListFrom: {1. 2}.
	bound := (QoppaSexprSemantic new bind: names to: values) .
	self assert: '((#y 2) (#x 1))' equals: bound qoppaPrintString 