as yet unclassified
parse: someCode as: nameOfStartRule
	| res |
	self flag: #obsolete.
	res := QoppaGrammar matchContents: someCode startingFrom: nameOfStartRule.
	"res failed ifTrue: [ res failure signal]."
	^res