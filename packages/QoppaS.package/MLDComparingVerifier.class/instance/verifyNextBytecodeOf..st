as yet unclassified
verifyNextBytecodeOf: contextPart
	| byte method offset type |
	"inspired by InstructionStream>>#interpretNextV3ClosureInstructionFor:"
	method := contextPart method.  
	byte := method at: contextPart pc.
	type := byte // 16.  
	offset := byte \\ 16.
	
	type = 11 ifTrue: [ | selector primitiveIndex receiver argCount |
		"type = 11; arithmetic special selector sends"
		argCount := (Smalltalk specialNargsAt: offset + 1).
		self assert: argCount+1 >= contextPart size.
		selector := (Smalltalk specialSelectorAt: offset + 1).
		receiver := (contextPart at: (contextPart stackPtr - argCount)).
		primitiveIndex := (receiver class >> selector) primitive.
		self assert: primitiveIndex ~= 0.
		^self
			verifyPrimitive: primitiveIndex
			rcv: receiver
			args: ((contextPart stackPtr - argCount+1 to: contextPart stackPtr) collect: [:i| 
				contextPart at: i])
		].
	
	^nil