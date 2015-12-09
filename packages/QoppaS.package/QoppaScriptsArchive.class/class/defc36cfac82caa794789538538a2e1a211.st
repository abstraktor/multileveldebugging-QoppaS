definitions
defc36cfac82caa794789538538a2e1a211
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | out addAll: ([:panes | panes
		sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]); add: (#id->#'c36cfac8-2caa-7947-8953-8538a2e1a211'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | out addAll: ([:panes | panes
		sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]'); yourself)