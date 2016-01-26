definitions
defc855a8fe406aa44881d0db1a43c3844e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'c855a8fe-406a-a448-81d0-db1a43c3844e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]')})