definitions
defef8d8c674966bf4c90daae7544d92b0b
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#id->#'ef8d8c67-4966-bf4c-90da-ae7544d92b0b'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'df324b31-b8cd-46a8-b79b-3cc8e457d053'); add: (#creationTimeStamp->'8 December 2015 11:44:28 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext contextStack ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)