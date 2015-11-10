as yet unclassified
do: aBlock

	| aLink |
	aLink := self.
	[aLink = nil] whileFalse:
		[aBlock value: aLink car.
		 aLink := aLink cdr]