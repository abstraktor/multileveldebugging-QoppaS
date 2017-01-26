as yet unclassified
parse: someCode as: nameOfStartRule
	| res |
	self flag: #obsolete.
	res := QoppaGrammar OhmInstance match: someCode startingFrom: nameOfStartRule.
	"res failed ifTrue: [ res failure signal]."
	^res