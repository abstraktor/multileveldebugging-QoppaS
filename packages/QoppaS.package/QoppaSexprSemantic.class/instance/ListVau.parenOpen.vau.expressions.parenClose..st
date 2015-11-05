as yet unclassified
ListVau: aNode parenOpen: x vau: xxx expressions: expressionsNode parenClose: xx
	| env body params args |
	"wip"
	"todo: consider env"
	"expressionsNode: params env body" 
	self assert: (expressionsNode children size = 3).
	args := self fexprSemantic value: expressionsNode.
	params := args first.
	env := args second.
	body := args third.
	^self eval: body in: self environment