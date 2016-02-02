definitions
defb2f427b279e9ed4daca98b94aec5715c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:qoppaEnv | qoppaEnv reduce: #append] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'b2f427b2-79e9-ed4d-aca9-8b94aec5715c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:27:28 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:qoppaEnv | qoppaEnv reduce: #append] value: in)]')})