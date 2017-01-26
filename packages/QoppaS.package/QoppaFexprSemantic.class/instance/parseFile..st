convenience
parseFile: someCode
	"Return OhmMatchResult for parsing someCode"
	| result |
	result := self grammar match: someCode startingFrom: 'File'.
	"(result isKindOf: OhmNode) ifTrue: [ result failure signal]."
	^ result