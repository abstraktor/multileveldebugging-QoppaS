as yet unclassified
confirm
	^self confirm: (
		(self resultsAreValid ifTrue: ['Ok'] ifFalse: ['Outlier Results:']), Character cr,
		
		((self results associations collect: [:assoc| assoc key, ': ', Character tab, assoc value asString]) joinSeparatedBy: Character cr),
		
		Character cr,
		'Debug that?'
	).