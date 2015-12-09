definitions
deff0a04d7bb206244d936f4c87eb8b714e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'jr'); add: (#creationTimeStamp->'9 December 2015 12:16:42 am'); yourself)); add: (#id->#'f0a04d7b-b206-244d-936f-4c87eb8b714e'); add: (#block->[:in :out | (
	[:objects | objects select: [:tuple |
		[:packageInfo :methodContext | (PackageOrganizer default packageOfMethod: methodContext method methodReference) == packageInfo ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects select: [:tuple |
		[:packageInfo :methodContext | (PackageOrganizer default packageOfMethod: methodContext method methodReference) == packageInfo ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result asList]]'); yourself)