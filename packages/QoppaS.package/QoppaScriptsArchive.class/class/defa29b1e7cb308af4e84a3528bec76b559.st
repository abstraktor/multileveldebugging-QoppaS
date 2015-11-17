definitions
defa29b1e7cb308af4e84a3528bec76b559
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'a29b1e7c-b308-af4e-84a3-528bec76b559'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)