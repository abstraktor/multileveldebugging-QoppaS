testing
isProperList
	| rest |
	rest := self.
	[rest isCons] whileTrue: [rest := rest cdr].
	^ rest isNil