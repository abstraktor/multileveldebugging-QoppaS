as yet unclassified
initialize
	
	"build primitive table to fetch the fallback from"
	Interpreter initializePrimitiveTable.

	verifiers := MLDVerifier verifiers.
	
	self reset.