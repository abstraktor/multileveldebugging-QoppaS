toolbuilder
roots
	self assert: rootNode isValid.
	"all method nodes contain a block first. lets skim forward to the statements"
	^rootNode children first children