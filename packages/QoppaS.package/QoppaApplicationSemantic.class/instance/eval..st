as yet unclassified
eval: args
	"args: env exp"
	self assert: args size = 2.
	"todo: use env"
	^args second