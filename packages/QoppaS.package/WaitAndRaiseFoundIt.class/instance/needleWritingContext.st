as yet unclassified
needleWritingContext
	^signalContext findContextSuchThat: [:ctxt |
		(ctxt receiver == self
			or: [ctxt receiver == self class]
			or: [ctxt receiver isKindOf: WaitAndRaiseStream]
			or: [ctxt receiver == WaitAndRaiseStream]) not]