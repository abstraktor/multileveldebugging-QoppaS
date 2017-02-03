as yet unclassified
itemName
	self item isNumber ifTrue: [^self item asString].
	
	^super itemName.