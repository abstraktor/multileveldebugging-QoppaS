definitions
defc36cfac82caa794789538538a2e1a211
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:panes | panes
		sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'c36cfac8-2caa-7947-8953-8538a2e1a211').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:panes | panes
		sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]')})