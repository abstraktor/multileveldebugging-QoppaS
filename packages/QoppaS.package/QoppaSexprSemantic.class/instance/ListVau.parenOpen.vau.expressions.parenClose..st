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
		newFrame := Cons newDictFrom: {envParam-> self environment}.

		params doWithIndex: [:param :i|
			newFrame := (Cons newDictFrom: {param -> (operands at: i)})
				cdr: newFrame;
				yourself]. 

		"evaluate in static environment with newFrame on top"
		self eval: body in: (Cons withCar: newFrame cdr: staticEnvironment)]