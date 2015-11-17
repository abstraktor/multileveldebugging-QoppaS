definitions
deff8960d243140c443a19cbadcc594e3a4
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 6:57:47 pm'); yourself)); add: (#id->#'f8960d24-3140-c443-a19c-badcc594e3a4'); add: (#block->[:in :out | (
	[:objects | objects select: [:step | step references isEmpty]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects select: [:step | step references isEmpty]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)