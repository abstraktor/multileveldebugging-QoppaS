definitions
deff0a04d7bb206244d936f4c87eb8b714e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects select: [:tuple |
		[:packageInfo :methodContext :contextIndex | packageInfo includesMethodReference: methodContext method methodReference ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f0a04d7b-b206-244d-936f-4c87eb8b714e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'jr').
(#creationTimeStamp -> '9 December 2015 12:16:42 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects select: [:tuple |
		[:packageInfo :methodContext :contextIndex | packageInfo includesMethodReference: methodContext method methodReference ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]')})