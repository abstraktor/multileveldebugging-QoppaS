printing
printInnerAsQoppaOn: aStream
	self car isCons ifTrue: [self car printAsQoppaOn: aStream] ifFalse: [self car printAsQoppaOn: aStream].
	self cdr ifNotNil: [
		aStream nextPutAll: ' '.
		self cdr isCons
			ifTrue: [self cdr printInnerAsQoppaOn: aStream]
			ifFalse: [aStream nextPutAll: '. '.
				self cdr printAsQoppaOn: aStream]]