definitions
def664d86616b6e4f4d90475318cfe90fed
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 6:49:23 pm'); yourself)); add: (#id->#'664d8661-6b6e-4f4d-9047-5318cfe90fed'); add: (#block->[:in :out | (
	[:objects | objects select: [:step | step nextLabel includesSubString: 'Qoppa']]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects select: [:step | step nextLabel includesSubString: ''Qoppa'']]
		value: in) do: [:result | out addAll: result asList]]'); yourself)