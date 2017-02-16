as yet unclassified
new: aSize raiseWhenWriting: anAddress
	| count bool |
	count := 0.
	^(self new: aSize)
		raiseIf: [:address :value| 
			bool := address = anAddress and: [4 <= (count := count + 1)].
			
			bool ifTrue: [1 halt].
			false];
		yourself