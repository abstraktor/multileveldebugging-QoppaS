definitions
defc6011fad77955c4da374b8282e60d5c0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); yourself)); add: (#id->#'c6011fad-7795-5c4d-a374-b8282e60d5c0'); add: (#block->[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]'); yourself)