*QoppaS
findMethod: aSelector inClassNamed: aClassName
	"
		OUT: messageSelector
		OUT: newMethod
	"
	| classOop |
	classOop := self findClassNamed: aClassName.
	messageSelector := self objectMemory stringObjectOf: aSelector.
	^newMethod := self lookupMethodInClass: classOop
	
	
	