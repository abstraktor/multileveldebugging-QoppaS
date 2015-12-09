definitions
defb7b837a9bcbdf34795b647d433085d80
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'b7b837a9-bcbd-f347-95b6-47d433085d80'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)