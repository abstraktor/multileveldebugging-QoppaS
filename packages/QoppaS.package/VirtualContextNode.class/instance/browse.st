as yet unclassified
browse
	| method context |
	context := self doItContext.
	context ifNil: [
		(self at: #selector ifAbsent: nil)
			ifNotNil: [:selector| ToolSet browse: self doItReceiver class selector: selector].
		^self].
	method := context method.
	ToolSet browse: method methodClass selector: method selector.