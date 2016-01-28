as yet unclassified
newListFrom: aCollection
	" returns a linked list made out of cons. Example:
	  '(1 2 3)  is built from {1. 2. 3} asOrderedCollection"
	|head tail|
	aCollection ifNil: [^nil].
	head := self new.
	tail := head.
	aCollection do: [:el |
		tail cdr: (QoppaWCons withCar: el cdr: nil).
		tail := tail cdr].
	^head cdr