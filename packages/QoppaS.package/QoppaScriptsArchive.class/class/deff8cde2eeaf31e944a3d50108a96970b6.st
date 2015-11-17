definitions
deff8cde2eeaf31e944a3d50108a96970b6
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'f8cde2ee-af31-e944-a3d5-0108a96970b6'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)