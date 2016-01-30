accessing
at: index
	| i |
	i := 0.
	self do: [:cons |
		(i := i + 1) = index ifTrue: [^ cons]].
	^ self errorSubscriptBounds: index