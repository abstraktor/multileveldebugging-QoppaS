as yet unclassified
new: aSize raiseWhenWriting: anAddress
	| count |
	count := 0.
	^(self new: aSize)
		raiseIf: [:address :value| address = anAddress and: [2 <= (count := count + 1)]];
		yourself