as yet unclassified
readAndEvaluate: anExpressionString
	| item |
	item := QoppaReplHistoryItem new.
	item evaluatedExpression: anExpressionString.
	item parsedExpression: (QoppaGrammar match: anExpressionString startingFrom: #File).
	item result: (QoppaScriptsDemo
		runDebugged: [interpreter readAndEvaluate: anExpressionString]).
	item environment: (interpreter globalEnv shallowCopy).
	history add: item