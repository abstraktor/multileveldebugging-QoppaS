definitions
def6a834886b92c0c4d8fc830fc79cf8369
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | {#icon
		-> (ViIconService doObject: object). #text
		-> (ViLabelService doObject: object)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'6a834886-b92c-0c4d-8fc8-30fc79cf8369'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | {#icon
		-> (ViIconService doObject: object). #text
		-> (ViLabelService doObject: object)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)