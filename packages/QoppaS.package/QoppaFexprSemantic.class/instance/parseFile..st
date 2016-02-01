convenience
parseFile: someCode
	"Return OhmMatchResult for parsing someCode"
	| result |
	result := QoppaGrammar match: someCode startingFrom: 'File'.
	result failed ifTrue: [ result failure signal].
	^ result