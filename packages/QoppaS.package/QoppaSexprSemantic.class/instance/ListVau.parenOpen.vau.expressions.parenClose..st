actions
ListVau: aNode parenOpen: x vau: xxx expressions: expressionsNode parenClose: xx
	| envParam body params args staticEnvironment |
	"expressionsNode: params env body" 
	self assert: (expressionsNode children size = 3).
	args := self fexprValue: expressionsNode.
	params := args first.
	envParam := args second.
	body := args third.
	staticEnvironment := self environment.
	self flag: #operativeArguments.
	^ QoppaOperative new
		parameters: params;
		block: [:operands| |newFrame|
			"self assert: (operands size = params size)."
			"the dynamic env"
			newFrame := QoppaWCons newDictFrom: {envParam-> self environment}.

			newFrame := self bind: params to: (QoppaWCons newListFrom: operands).

			newFrame := (QoppaWCons
				newDictFrom: {envParam -> self environment})
				cdr: newFrame;
				yourself.

			"evaluate in static environment with newFrame on top"
			self eval: body in: (QoppaWCons withCar: newFrame cdr: staticEnvironment)];
		yourself