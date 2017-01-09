verifiers
fbVerifyPrimitive: primitiveIndex rcv: receiver args: arguments
	| methods |
	"selector := Interpreter primitiveTable at: primitiveIndex+1.
	method := InterpreterPrimitives methodDict at: selector."
	
	methods := SystemNavigation default allMethodsSelect: [:m|
		m primitive = primitiveIndex
		and: [m selector numArgs = arguments size]].
	
	^methods collect: [:method|
		[CompiledMethod
			receiver: receiver
			withArguments: arguments
			executeMethod: method compiledMethod withoutPrimitive]
		on: Error do: [:e|
			"return the error code if the primitive simply failed"
			({Object>>#primitiveFailed:} includes: e signalerContext sender method)
				ifTrue: ["primitive failure" 'primitive failed with code: ', (e signalerContext sender sender sender namedTempAt: 1) ]
				ifFalse: [e signal]]].