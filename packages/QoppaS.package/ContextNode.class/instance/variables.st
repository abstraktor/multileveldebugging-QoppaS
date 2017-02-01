accessing
variables
	"Answer a suitable Collection of points of interest during the execution of this context. These might be local variables or something else captured in the scope."
	^self at: #variables ifAbsent: [Dictionary new]