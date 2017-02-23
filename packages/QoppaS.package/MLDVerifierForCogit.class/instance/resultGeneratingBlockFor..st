as yet unclassified
resultGeneratingBlockFor: aMLDEmptyVerificationResult
	"open new window at jit of the selected native frame"
	| method primitiveHoldingClass |
	method := nil.
	primitiveIndex := aMLDEmptyVerificationResult primitiveIndex.
	arguments := aMLDEmptyVerificationResult arguments.
	receiver := aMLDEmptyVerificationResult receiver.
	"since we take the primitive as joint point, you can't rely on me picking the
	method with the callback code you originally used. To debug the fallback code,
	use the corresponding fallback evaluator"

	"for convenience, I'll lookup the primitive method in the receiver's class, if you have
	multiples for this primitiveIndex, you have to deal with uncertainty"
	primitiveHoldingClass := receiver class.

	[primitiveHoldingClass == nil or: [method ~= nil]]
		whileFalse: [
			receiver class methodsDo: [:curMethod|
				curMethod primitive = primitiveIndex ifTrue: [method := curMethod]].
			primitiveHoldingClass := primitiveHoldingClass superclass].

	^[method valueWithReceiver: receiver arguments: arguments]
		asContext stepIntoMethod: method