as yet unclassified
parse: someCode as: nameOfStartRule
	| res |
	self flag: #obsolete.
	res := QoppaGrammar match: someCode startingFrom: nameOfStartRule.
	res failed ifTrue: [ res failure signal].
	^res