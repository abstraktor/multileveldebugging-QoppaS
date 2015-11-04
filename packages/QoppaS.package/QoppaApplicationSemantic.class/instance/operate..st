as yet unclassified
operate: args
	"args: env operative operands"
	self assert: args size = 3.
	"todo: use env"
	^self applyPrim: args second on: args third