scheme-helpers
append: aCollection 
	| copyOfSelf cons |
	copyOfSelf := self asProperListCopy.
	cons := copyOfSelf.
	[cons cdr isNil] whileFalse: [cons := cons cdr].
	cons cdr: aCollection asQoppaList.
	^ copyOfSelf
	