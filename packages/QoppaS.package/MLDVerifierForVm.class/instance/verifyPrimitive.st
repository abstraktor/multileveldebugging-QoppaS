as yet unclassified
verifyPrimitive
	| method |
	
	method := (MLDComparingVerifier compile: 'temporaryVmMethod',
		(((1 to: arguments size) collect: [:i| 'arg: arg', i]) joinSeparatedBy: ' '),
		'
	<primitive: ', primitiveIndex, '>'
		notifying: nil
		trailer: MLDComparingVerifier defaultMethodTrailer
		ifFail: [self halt]) method.
	"method := AssemblerMethod new
		methodClass: MLDComparingVerifier;
		selector: #temporaryVmMethod;
		numArgs: arguments size;
		primitive: primitiveIndex;
		callPrimitive: primitiveIndex;
		methodReturnReceiver;
		assemble."
		
	"tbd: evaluate the temporary to know the error code of the primitive"
	^self returnResult: (CompiledMethod receiver: receiver withArguments: arguments executeMethod: method)