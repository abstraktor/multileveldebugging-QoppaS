as yet unclassified
evaluate: anExpressionString
	| item |
	item := QoppaReplHistoryItem new.
	item evaluatedExpression: anExpressionString.
	item parsedExpression: (QoppaGrammar match: anExpressionString startingFrom: #File).
	item result: (QoppaScriptsDemo runDebugged: [self semantic value: item parsedExpression]).
	item environment: (self semantic environment shallowCopy).
	history add: item