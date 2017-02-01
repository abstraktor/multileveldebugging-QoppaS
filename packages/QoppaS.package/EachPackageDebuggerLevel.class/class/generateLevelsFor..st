as yet unclassified
generateLevelsFor: repo
	|levels keys|
	"add explicit package levels to our index so that they don't get another level created"
	keys := ((PackageDebuggerLevel allSubclasses
		reject: [:c| c = self ])
		collect: [:c| c packageName]) asSet.
	levels := OrderedCollection new.
	
	"finally add the missing package levels"
	"make sure this part is not inherited"
	repo residentialStack
		do: [:aContext| |package|
			package := PackageOrganizer default packageOfMethod: aContext method methodReference.
			(keys includes: package name)
				ifFalse: [
					keys add: package name.
					levels addLast: (PackageDebuggerLevel forRepo: repo package: package)]].
		
	^levels