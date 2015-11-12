as yet unclassified
File: aNode with: containedNodes
	^containedNodes children inject: nil into: [:previous :next | self value: next]