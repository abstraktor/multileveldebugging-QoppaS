verifiers
fbVerifyPrimitive: primitiveIndex rcv: receiver args: arguments
	| methods |
	"selector := Interpreter primitiveTable at: primitiveIndex+1.
	method := InterpreterPrimitives methodDict at: selector."
	
	methods := SystemNavigation default allMethodsSelect: [:m| m primitive = primitiveIndex].
	
	^methods collect: [:method|
		CompiledMethod
			receiver: receiver
			withArguments: arguments
			executeMethod: method compiledMethod withoutPrimitive].