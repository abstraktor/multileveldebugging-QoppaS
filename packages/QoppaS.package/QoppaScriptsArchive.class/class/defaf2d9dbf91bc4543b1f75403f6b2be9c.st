definitions
defaf2d9dbf91bc4543b1f75403f6b2be9c
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | in
		do: [:obj | (out identityIncludes: obj)
				ifFalse: [out add: obj]]]); add: (#id->#'af2d9dbf-91bc-4543-b1f7-5403f6b2be9c'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | in
		do: [:obj | (out identityIncludes: obj)
				ifFalse: [out add: obj]]]'); yourself)