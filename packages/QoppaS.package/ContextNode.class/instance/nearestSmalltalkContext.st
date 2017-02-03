inspection
nearestSmalltalkContext
	children do: [:each | each nearestSmalltalkContext ifNotNilDo: [:stContext | ^ stContext]].
	^ nil