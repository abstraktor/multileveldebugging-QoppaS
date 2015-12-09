definitions
defdfb10fd01cf3254ab02c195c2af9e991
	<definition>

	^ ((Dictionary new) add: (#block->[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]); add: (#id->#'dfb10fd0-1cf3-254a-b02c-195c2af9e991'); add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationTimeStamp->'17 November 2015 7:03:40 pm'); add: (#creationAuthor->'jr'); yourself)); add: (#sourceCode->'[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]'); yourself)