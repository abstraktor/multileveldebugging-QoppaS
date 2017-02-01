toolbuilder
input: newText
	input := newText asString.
	(self shouldInputBeEvaluated: input)
		ifTrue: [	self readAndEvaluate: input]