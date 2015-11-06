as yet unclassified
assq: aKey
	self do: [:cons| (cons car = aKey) ifTrue: [ ^cons ]].
	^nil
	"self car car = aKey
		ifTrue: [^self car]
		ifFalse: [
			self cdr
				ifNil: [ ^false]
				ifNotNil: [^self cdr assq: aKey]]"