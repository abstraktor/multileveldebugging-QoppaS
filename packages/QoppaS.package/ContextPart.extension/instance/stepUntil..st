*QoppaS
stepUntil: aBlock
	"Step until aBlock returns true for the given context"

	| ctxt |
	ctxt := self.
	[aBlock value: (ctxt := ctxt step)] whileFalse.
	^ ctxt