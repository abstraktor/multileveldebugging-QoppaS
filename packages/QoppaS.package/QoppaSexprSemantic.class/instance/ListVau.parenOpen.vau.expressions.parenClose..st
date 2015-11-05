as yet unclassified
ListVau: aNode parenOpen: x vau: xxx expressions: expressionsNode parenClose: xx
	| envParam body params args staticEnvironment |
	"expressionsNode: params env body" 
	self assert: (expressionsNode children size = 3).
	args := self fexprSemantic value: expressionsNode.
	params := args first.
	envParam := args second.
	body := args third.
	staticEnvironment := self environment.
	^[:operands| |newFrame|
		self assert: (operands size = params size).
		"the dynamic env"
		newFrame := Cons withCar: envParam cdr: self environment.

		params doWithIndex: [:param :i|
			newFrame setCdr: (Cons
				withCar: (Cons withCar: param cdr: (operands at: i))
				cdr: newFrame cdr)]. 

		"evaluate in static environment with newFrame on top"
		self eval: body in: (Cons withCar: newFrame cdr: staticEnvironment)]