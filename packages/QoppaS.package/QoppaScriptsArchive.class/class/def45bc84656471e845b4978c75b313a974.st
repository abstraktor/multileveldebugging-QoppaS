definitions
def45bc84656471e845b4978c75b313a974
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node summary }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#id->#'45bc8465-6471-e845-b497-8c75b313a974'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'13 January 2016 4:50:56 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node summary }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)