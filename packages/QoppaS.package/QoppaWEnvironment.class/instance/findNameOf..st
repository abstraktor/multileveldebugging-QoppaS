printing
findNameOf: aValue
	cons do: [:scope|
		scope do: [:variable|
			(variable cadr = aValue)
				ifTrue: [^variable car]]].
		
	^#anonymous