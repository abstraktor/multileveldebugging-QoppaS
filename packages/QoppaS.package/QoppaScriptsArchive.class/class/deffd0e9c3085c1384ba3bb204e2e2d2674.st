definitions
deffd0e9c3085c1384ba3bb204e2e2d2674
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord string }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'fd0e9c30-85c1-384b-a3bb-204e2e2d2674'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord string }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)