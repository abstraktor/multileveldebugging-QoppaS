definitions
def3795c76a68cb0c41b7ccc01de9737154
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'8 December 2015 11:44:28 pm'); yourself)); add: (#id->#'3795c76a-68cb-0c41-b7cc-c01de9737154'); add: (#block->[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)