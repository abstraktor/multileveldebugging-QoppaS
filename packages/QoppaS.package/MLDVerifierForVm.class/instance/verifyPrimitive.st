as yet unclassified
verifyPrimitive
	| method |
	method := AssemblerMethod new
		methodClass: MLDComparingVerifier;
		selector: #temporaryVmMethod;
		numArgs: arguments size;
		primitive: primitiveIndex;
		trailerData: #[126 225 83 255];
		callPrimitive: primitiveIndex;
		assemble.
		
	"tbd: evaluate the temporary to know the error code of the primitive"
	^self returnResult: (CompiledMethod receiver: receiver withArguments: arguments executeMethod: method)