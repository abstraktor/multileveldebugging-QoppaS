as yet unclassified
ListVau: aNode parenOpen: x vau: xxx expressions: expressionsNode parenClose: xx
	| env body params args |
	"wip"
	"todo: consider env"
	"expressionsNode: params env body" 
	self assert: (expressionsNode children size = 3).
	args := self listSemantic value: expressionsNode.
	params := args first.
	env := args second.
	body := args third.
	^OhmNode
		newNamed: 'Vau'
		forGrammar: self grammar
		andInput: expressionsNode interval
		startedAt: 0
		withChildren:  body.