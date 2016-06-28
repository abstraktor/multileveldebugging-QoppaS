convenience
parseFile: someCode
	"Return OhmMatchResult for parsing someCode"
	| result |
	result := QoppaGrammar matchContents: someCode startingFrom: 'File'.
	"(result isKindOf: OhmNode) ifTrue: [ result failure signal]."
	^ result