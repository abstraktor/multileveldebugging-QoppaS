definitions
def054c9a9edfadbc418cdf9c14904417fd
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]); add: (#id->#'054c9a9e-dfad-bc41-8cdf-9c14904417fd'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'18 January 2016 5:43:02 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:packageInfo | QoppaMLDGroupRepresentation for: packageInfo ]]
		value: in) do: [:result | out add: result asList]]'); yourself)