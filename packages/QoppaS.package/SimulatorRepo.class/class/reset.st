as yet unclassified
reset
	instance := nil.

	"release some memory pressure"
	CommandHistory resetAllHistory.
	Smalltalk garbageCollect.
	
	^CogVMSimulator allInstances