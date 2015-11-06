as yet unclassified
size
	|res cur|
	res := 1.
	cur := self cdr.
	[cur] whileNotNil: [
		res := res + 1.
		cur := cur cdr].
	^res