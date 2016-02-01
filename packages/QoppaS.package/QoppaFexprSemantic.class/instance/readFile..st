convenience
readFile: aString
	"Return a list of forms"
	^ self value: (self parseFile: aString)