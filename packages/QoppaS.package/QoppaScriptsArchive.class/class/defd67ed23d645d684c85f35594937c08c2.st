definitions
defd67ed23d645d684c85f35594937c08c2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:bindingList | bindingList cadr]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d67ed23d-645d-684c-85f3-5594937c08c2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:42:19 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:bindingList | bindingList cadr]]
		value: in) do: [:result | out addAll: result asList]]')})