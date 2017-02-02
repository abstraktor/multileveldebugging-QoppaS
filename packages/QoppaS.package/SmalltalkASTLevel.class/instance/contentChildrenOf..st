toolbuilder
contentChildrenOf: aParseNode
	(aParseNode respondsTo: #statements) ifTrue: [^aParseNode statements].
	(aParseNode respondsTo: #arguments) ifTrue: [^aParseNode arguments].
	^{}