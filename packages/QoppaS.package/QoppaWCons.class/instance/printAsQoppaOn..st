as yet unclassified
printAsQoppaOn: aStream
	self isQuoted ifTrue: [ aStream nextPutAll: ''''].
	aStream nextPutAll: '('.
	self printInnerAsQoppaOn: aStream.  
	aStream nextPutAll: ')'.

	"self cdr
		ifNil: [^self car ifNotNilDo: [:c| c printStringLimitedTo: characterLimit ]]
		ifNotNil: [
		^ '(',
			(self car ifNotNilDo: [:c| c printStringLimitedTo: characterLimit - 3]),
			' ' ,
			(self cdr ifNotNilDo: [:c| c printStringLimitedTo: characterLimit - 3]),
			')']"