definitions
def671cb9bde65bee4b839295f10756174b
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'671cb9bd-e65b-ee4b-8392-95f10756174b'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 January 2016 4:12:31 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)