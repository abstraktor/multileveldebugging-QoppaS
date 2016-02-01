as yet unclassified
ListVau: aNode parenOpen: x vau: xxx expressions: expressionsNode parenClose: xx
	"TODO: change the Grammar to not handle vau specially"
	^QoppaWCons newListFrom: 
		{QoppaWSymbol for: #vau}, (expressionsNode children collect: [:exp | self value: exp])