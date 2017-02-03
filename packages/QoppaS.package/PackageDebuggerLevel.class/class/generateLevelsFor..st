as yet unclassified
generateLevelsFor: repo
	"I am abstract"
	self = PackageDebuggerLevel
		ifFalse: [
			(PackageOrganizer default packageNamed: self packageName ifAbsent: [nil])
				ifNotNil: [:package|
					(repo residentialStack anySatisfy: [:context |
							package includesMethodReference: context method methodReference])
						ifTrue: [^{self forRepo: repo package: package} asOrderedCollection ]]].
					
	^OrderedCollection new