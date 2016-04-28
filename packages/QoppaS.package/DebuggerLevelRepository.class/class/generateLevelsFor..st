as yet unclassified
generateLevelsFor: aContextStack
	|levels|
	levels := OrderedCollection new.
		
	"allows a level to generate multiple instances"
	DebuggerLevel allSubclassesDo: [:c|
		Transcript showln: c asString.
		levels addAll: (c generateLevelsFor: aContextStack)].

	levels sort: [:lhs :rhs | lhs priority > rhs priority].
	
	^levels