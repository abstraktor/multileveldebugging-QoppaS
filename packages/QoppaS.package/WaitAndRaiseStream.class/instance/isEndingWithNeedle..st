as yet unclassified
isEndingWithNeedle: needle
	"fail early if needle doesn't even fit"
	(position < needle size) ifTrue: [^false].
	
	"compare the last couple of elements"
	position - needle size + 1 to: position do: [:index |
		((collection at: index) = (needle at: index + needle size - position))
			ifFalse: [^false]].
	^true