as yet unclassified
generateLevelsFor: aContextStack
	"I am abstract"
	self = PackageDebuggerLevel
		ifFalse: [
			(PackageOrganizer default packageNamed: self packageName ifAbsent: [nil])
				ifNotNil: [:package|
					(aContextStack anySatisfy: [:context |
							package includesMethodReference: context method methodReference])
						ifTrue: [^{self forPackage: package} asOrderedCollection ]]].
					
	^OrderedCollection new