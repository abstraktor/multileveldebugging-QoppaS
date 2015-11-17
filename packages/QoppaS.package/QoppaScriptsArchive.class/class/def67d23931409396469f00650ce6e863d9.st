definitions
def67d23931409396469f00650ce6e863d9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'67d23931-4093-9646-9f00-650ce6e863d9'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)