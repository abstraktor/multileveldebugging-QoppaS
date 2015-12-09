definitions
def33647364d8676a4cafbf17f9b590c3cd
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:qoppaRepl | qoppaRepl history]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'33647364-d867-6a4c-afbf-17f9b590c3cd'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'12 November 2015 6:34:52 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:qoppaRepl | qoppaRepl history]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)