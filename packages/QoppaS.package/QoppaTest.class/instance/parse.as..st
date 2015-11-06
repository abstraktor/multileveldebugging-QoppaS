as yet unclassified
parse: someCode as: nameOfStartRule
	| res |
	res := QoppaGrammar match: someCode startingFrom: nameOfStartRule.
	res failed ifTrue: [ res failure signal].
	^res