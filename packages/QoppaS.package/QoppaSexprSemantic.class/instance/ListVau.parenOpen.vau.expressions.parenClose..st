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
	1 halt.
	^[:operands| |newFrame|
		self assert: (operands size = params size).
		"the dynamic env"
		newFrame := QoppaWCons newDictFrom: {envParam-> self environment}.

		params doWithIndex: [:param :i|
			newFrame := (QoppaWCons newDictFrom: {param -> (operands at: i)})
				cdr: newFrame;
				yourself]. 

		"evaluate in static environment with newFrame on top"
		self eval: body in: (QoppaWCons withCar: newFrame cdr: staticEnvironment)]