definitions
defa7362dd85a0a2e449be9b4ac228ce844
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'a7362dd8-5a0a-2e44-9be9-b4ac228ce844'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 5:07:55 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:contextNodePrototype | {#text -> contextNodePrototype summary}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)