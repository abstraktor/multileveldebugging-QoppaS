definitions
def9ec428213c758146a08d14787c89fabe
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'8 December 2015 11:52:33 pm'); yourself)); add: (#id->#'9ec42821-3c75-8146-a08d-14787c89fabe'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | PackageOrganizer default packageOfMethod: object method methodReference]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | PackageOrganizer default packageOfMethod: object method methodReference]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)