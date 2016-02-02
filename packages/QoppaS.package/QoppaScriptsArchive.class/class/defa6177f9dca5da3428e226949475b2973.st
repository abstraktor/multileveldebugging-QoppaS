definitions
defa6177f9dca5da3428e226949475b2973
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:qoppaOperative | qoppaOperative source]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a6177f9d-ca5d-a342-8e22-6949475b2973').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 1:43:06 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:qoppaOperative | qoppaOperative source]]
		value: in) do: [:result | out addAll: result asList]]')})