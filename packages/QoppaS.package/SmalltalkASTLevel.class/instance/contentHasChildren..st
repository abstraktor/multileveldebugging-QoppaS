toolbuilder
contentHasChildren: aParseNode
	^((aParseNode respondsTo: #statements) and: [aParseNode statements isEmpty not])
		or: ((aParseNode respondsTo: #arguments) and: [aParseNode arguments isEmpty not])