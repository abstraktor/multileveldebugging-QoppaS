as yet unclassified
consListDo: aBlock
	| element |
	element := self.
	[element isCons]
		whileTrue: [aBlock value: element.
			element := element cdr]