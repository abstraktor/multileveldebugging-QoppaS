definitions
def33753ff8c63556468da5bfaa2d4dd0c8
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | { #text
		-> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'33753ff8-c635-5646-8da5-bfaa2d4dd0c8'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | { #text
		-> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)