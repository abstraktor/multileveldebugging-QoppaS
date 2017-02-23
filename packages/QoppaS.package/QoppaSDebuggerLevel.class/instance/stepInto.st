actions
stepInto
	| originContext |
	"running the verifier here breaks stuff"
	originContext := self debugger contextStackTop.
	[self debugger send] 
		doWhileFalse: [
			self debugger contextStackTop method = (QoppaInterpreter >> #operate:on:in:)
			or: [self debugger contextStackTop method protocol = #'qoppa-errors']]