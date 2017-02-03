toolbuilder
shouldInputBeEvaluated: input
	"don't eval empty strings nor CR"
	((input
		copyWithoutAll: Character separators)
		copyWithoutAll: {Character cr. $)})
		isEmpty ifTrue: [^false].
	
	"if doesn't contain a CR"
	(input includes: Character cr) ifFalse: [^false].
	
	"if it ends with a CR"
	(input endsWith: String cr) ifTrue: [^true].
	
	"if it ends ith a CR and closing parens afterwards"
	^(input copyAfterLast: Character cr)
		allSatisfy: [:c| c = $)].