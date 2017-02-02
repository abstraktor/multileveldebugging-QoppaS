as yet unclassified
isAlive
	"let's assume so by default"
	^self at: #isAlive ifAbsent: [true]