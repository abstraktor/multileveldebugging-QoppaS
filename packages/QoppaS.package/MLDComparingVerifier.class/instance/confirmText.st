as yet unclassified
confirmText
	^(self resultsAreValid
			ifTrue: ['Ok']
			ifFalse: [(Interpreter primitiveTable at: resultsPrimitiveIndex+1),' returned varying results:']), Character cr,Character cr,
		
		(((self results associations 
			reject: [:assoc| assoc value isEmpty])
			collect: [:assoc| assoc key, ': ', Character tab, assoc value asString]) joinSeparatedBy: Character cr),
		
		Character cr, Character cr,
		'Debug that?'