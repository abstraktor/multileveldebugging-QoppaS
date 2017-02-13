enumerating
do: aBlock

	| element |
	element := self.
	[element isNil] whileFalse:
		[element isCons
			ifTrue: [aBlock value: element car.
				element := element cdr]
			ifFalse: [aBlock value: element.
				element := nil]]