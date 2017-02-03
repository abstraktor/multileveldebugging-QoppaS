as yet unclassified
nodesDetect: aBlockClosure
	(aBlockClosure value: self)
		ifTrue: [^self]
		ifFalse: [
			self children do: [:child|
				(child nodesDetect: aBlockClosure)
					ifNotNil: [:childsChild| ^childsChild]]].
		
	^nil