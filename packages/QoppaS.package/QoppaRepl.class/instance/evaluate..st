as yet unclassified
evaluate: anExpressionString
	| item |
	item := QoppaReplHistoryItem new.
	item evaluatedExpression: anExpressionString.
	"we should evaluate this with Qoppa now"
	item result: 35. "but we don't"
	history add: item