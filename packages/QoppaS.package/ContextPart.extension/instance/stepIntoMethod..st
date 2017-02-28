*QoppaS
stepIntoMethod: aMethod
	"Step until the context enters or returns the referenced method"
	^self stepUntil: [:ctxt| ctxt isNil or: [ctxt method methodReference = aMethod methodReference]]