interpreting
readAndEvaluate: aString
	| forms |
	forms := self reader readFile: aString.
	^ forms inject: nil into: [:prev :each | self eval: each in: self globalEnv]