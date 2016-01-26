definitions
defc6011fad77955c4da374b8282e60d5c0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'c6011fad-7795-5c4d-a374-b8282e60d5c0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:methods | methods
		sorted: [:m1 :m2 | m1 selector <= m2 selector]] value: in)]')})