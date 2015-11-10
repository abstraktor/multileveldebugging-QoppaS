as yet unclassified
atomSymbol: aNode with: x with: charsNode
	^(QoppaWSymbol for: charsNode interval contents asSymbol) isQuoted: true; yourself