definitions
def7fd47421241de44a9de80f3fc22bd6ea
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | out addAll: ([:classes | classes
		sorted: [:c1 :c2 | c1 name <= c2 name]] value: in)]); add: (#id->#'7fd47421-241d-e44a-9de8-0f3fc22bd6ea'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | out addAll: ([:classes | classes
		sorted: [:c1 :c2 | c1 name <= c2 name]] value: in)]'); yourself)