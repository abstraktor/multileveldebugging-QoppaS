as yet unclassified
inform
	self inform: (
		(self resultsAreValid ifTrue: ['Ok'] ifFalse: ['Outlier Results:']), Character cr,
		'Running VM: ',
		Character tab,
		(results at: #vm) asCommaStringAnd,
		Character cr, 
		
		'Fallback: ',
		Character tab,
		(results at: #fb) asCommaStringAnd,
		Character cr,
		 
		'Slang: ',
		Character tab,
		(results at: #slang) asCommaStringAnd
	).