definitions
def63ac1def5b83c24cb424a3290ecf3748
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'63ac1def-5b83-c24c-b424-a3290ecf3748'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | (object isKindOf: ViMultiPaneWidget)
		ifTrue: [object panes]
		ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | (object isKindOf: ViMultiPaneWidget)
		ifTrue: [object panes]
		ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)