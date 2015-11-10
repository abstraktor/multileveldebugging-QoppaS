as yet unclassified
printOn: aStream
	self isQuoted ifTrue: [ aStream nextPutAll: ''''].
	aStream nextPutAll: '('.
	self isEmpty ifFalse: [
		self car printOn: aStream.
		self cdr ifNotNil: [
			aStream nextPutAll: ' '.
			self cdr isLeaf
				ifFalse: [self cdr printOn: aStream]
				ifTrue:  [self cdr car printOn: aStream]]].
	aStream nextPutAll: ')'.

	"self cdr
		ifNil: [^self car ifNotNilDo: [:c| c printStringLimitedTo: characterLimit ]]
		ifNotNil: [
		^ '(',
			(self car ifNotNilDo: [:c| c printStringLimitedTo: characterLimit - 3]),
			' ' ,
			(self cdr ifNotNilDo: [:c| c printStringLimitedTo: characterLimit - 3]),
			')']"