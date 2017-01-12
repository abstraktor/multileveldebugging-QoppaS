as yet unclassified
verifyPrimitive
	| methods |
	"selector := Interpreter primitiveTable at: primitiveIndex+1.
	method := InterpreterPrimitives methodDict at: selector."
	
	methods := SystemNavigation default allMethodsSelect: [:m|
		m primitive = primitiveIndex
		and: [m selector numArgs = arguments size]].
	
	^methods collect: [:method|
		[self returnResult: (CompiledMethod
				receiver: receiver
				withArguments: arguments
				executeMethod: method compiledMethod withoutPrimitive)
			ofFallback: method] 
		on: Error do: [:e|
			"return the error code if the primitive simply failed"
			(((e isKindOf: MessageNotUnderstood) not)
			and: [{Object>>#primitiveFailed:} includes: e signalerContext sender method])
				ifTrue: ["primitive failure" self returnFailure: (e signalerContext sender sender sender namedTempAt: 1) ofFallback: method]
				ifFalse: [self returnFailureWithException: e]]].