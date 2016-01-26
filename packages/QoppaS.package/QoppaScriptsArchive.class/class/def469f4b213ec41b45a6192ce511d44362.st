definitions
def469f4b213ec41b45a6192ce511d44362
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'469f4b21-3ec4-1b45-a619-2ce511d44362').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '17 November 2015 7:03:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]')})