as yet unclassified
verifyNextBytecodeOf: contextPart
	| byte method offset type |
	"inspired by InstructionStream>>#interpretNextV3ClosuresInstructionFor:"
	self reset.
	self assert: contextPart isDead not.

	method := contextPart method.  
	byte := method at: contextPart pc.
	type := byte // 16.  
	offset := byte \\ 16.
	
	(type = 11 "or: [type = 12]") ifTrue: [ | selector primitiveIndex receiver argCount |
		type = 11 ifTrue: [
			"type = 11; arithmetic special selector sends"
			argCount := (Smalltalk specialNargsAt: offset + 1).
			selector := (Smalltalk specialSelectorAt: offset + 1)].
		"type = 12 ifTrue: [
			""type = 12; non-arithmetic special selector sends""
			argCount := (Smalltalk specialNargsAt: offset + 17).
			selector := (Smalltalk specialSelectorAt: offset + 17)]."

		self assert: argCount+1 <= contextPart size.
		receiver := (contextPart at: (contextPart stackPtr - argCount)).
		primitiveIndex := (receiver class lookupSelector: selector) primitive.
		(primitiveIndex = 0) ifTrue: ["send bytecode receiver is not a primitive" ^nil].
		^self
			verifyPrimitive: primitiveIndex
			rcv: receiver
			args: ((contextPart stackPtr - argCount+1 to: contextPart stackPtr) collect: [:i| 
				contextPart at: i])
		].
	
	^nil