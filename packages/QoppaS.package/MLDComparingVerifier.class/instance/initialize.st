as yet unclassified
initialize
	
	"build primitive table to fetch the fallback from"
	Interpreter initializePrimitiveTable.
	
	self initializeSimulator.
	
	self reset.