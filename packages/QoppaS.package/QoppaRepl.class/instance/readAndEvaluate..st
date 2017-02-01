as yet unclassified
readAndEvaluate: anExpressionString
	| item |
	item := QoppaReplHistoryItem new.
	item evaluatedExpression: anExpressionString.
	item parsedExpression: (QoppaGrammar OhmInstance match: anExpressionString startingFrom: #File).
	item environment: (interpreter globalEnv shallowCopy).
	
	item result: (TBMLD
		runDebugged: [
			interpreter readAndEvaluate: anExpressionString asString
			]).
	
	history add: item.
	
	input := ''.
	self changed: #input.
	self changed: #history.