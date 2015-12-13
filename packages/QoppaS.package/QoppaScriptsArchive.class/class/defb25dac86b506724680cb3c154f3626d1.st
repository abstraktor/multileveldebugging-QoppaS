definitions
defb25dac86b506724680cb3c154f3626d1
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects select: [:step | step label notNil]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'b25dac86-b506-7246-80cb-3c154f3626d1'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 6:43:26 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects select: [:step | step label notNil]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)