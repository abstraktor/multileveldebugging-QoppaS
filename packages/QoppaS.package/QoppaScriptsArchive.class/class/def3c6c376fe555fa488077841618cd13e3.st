definitions
def3c6c376fe555fa488077841618cd13e3
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | out addAll: (in sorted: [:a :b | a nextLabel < b nextLabel])]); add: (#id->#'3c6c376f-e555-fa48-8077-841618cd13e3'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'9 December 2015 12:56:05 am'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | out addAll: (in sorted: [:a :b | a nextLabel < b nextLabel])]'); yourself)