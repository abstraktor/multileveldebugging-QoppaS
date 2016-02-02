definitions
defd235d12ee6ba6e49b2225c9fd954f4e8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:bindingList :interpreter | {bindingList cadr. interpreter reader}] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d235d12e-e6ba-6e49-b222-5c9fd954f4e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '2 February 2016 2:15:46 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:bindingList :interpreter | {bindingList cadr. interpreter reader}] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]')})