as yet unclassified
printInnerOn: aStream
	self car isCons ifTrue: [self car printAsQoppaOn: aStream] ifFalse: [self car printOn: aStream].
	self cdr ifNotNil: [
		aStream nextPutAll: ' '.
		self cdr isCons
			ifTrue: [self cdr printInnerOn: aStream]
			ifFalse: [aStream nextPutAll: '. '.
				self cdr printOn: aStream]]