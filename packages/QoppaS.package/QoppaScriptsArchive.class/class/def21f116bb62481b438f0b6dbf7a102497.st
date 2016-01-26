definitions
def21f116bb62481b438f0b6dbf7a102497
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:contextNode | contextNode children]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'21f116bb-6248-1b43-8f0b-6dbf7a102497'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'21 January 2016 10:53:11 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:contextNode | contextNode children]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)