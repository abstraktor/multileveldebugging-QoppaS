setup
generateLevels
	levels := OrderedCollection new.
		
	"allows a level to generate multiple instances"
	DebuggerLevel allSubclassesDo: [:c|
		levels addAll: (c generateLevelsFor: self)].

	"sort by priority"
	levels sort: [:lhs :rhs | lhs priority > rhs priority].