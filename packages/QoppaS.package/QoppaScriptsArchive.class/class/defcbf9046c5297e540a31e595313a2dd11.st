definitions
defcbf9046c5297e540a31e595313a2dd11
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | PackageBasedContextGrouper new groupContexts: objects]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'cbf9046c-5297-e540-a31e-595313a2dd11'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'6 January 2016 4:47:17 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | PackageBasedContextGrouper new groupContexts: objects]
		value: in) do: [:result | out addAll: result asList]]'); yourself)