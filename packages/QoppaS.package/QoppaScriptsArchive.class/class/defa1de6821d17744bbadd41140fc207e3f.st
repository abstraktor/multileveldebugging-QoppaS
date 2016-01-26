definitions
defa1de6821d17744bbadd41140fc207e3f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem environment}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a1de6821-d177-44bb-add4-1140fc207e3f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'bak').
(#creationTimeStamp -> '24 November 2015 3:48:52 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:qoppaReplHistoryItem | {#text -> qoppaReplHistoryItem environment}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})