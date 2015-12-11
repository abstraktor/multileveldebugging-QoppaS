definitions
def5fe8f655f17549f9a1f72099e3ed7d9b
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]); add: (#id->#'5fe8f655-f175-49f9-a1f7-2099e3ed7d9b'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'11 December 2015 5:19:45 pm'); add: (#creationAuthor->'bak'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]'); yourself)