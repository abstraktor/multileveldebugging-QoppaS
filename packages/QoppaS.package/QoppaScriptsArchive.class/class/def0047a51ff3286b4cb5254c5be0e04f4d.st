definitions
def0047a51ff3286b4cb5254c5be0e04f4d
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'0047a51f-f328-6b4c-b525-4c5be0e04f4d'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)