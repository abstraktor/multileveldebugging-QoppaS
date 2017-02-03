as yet unclassified
groupNodes: aStackOfContextNodes
	| currentPackageNode currentPackage |
	currentPackage := nil.
	^ OrderedCollection streamContents: [:virtualNodes | 
		aStackOfContextNodes do: [:each | | package |
			package := PackageOrganizer default packageOfMethod: each contextPart method methodReference.
			currentPackage ~= package ifTrue: [
				currentPackage := package.
				currentPackageNode := VirtualContextNode new.
				currentPackageNode summary: package name.
				virtualNodes nextPut: currentPackageNode].
			currentPackageNode addChild: each]]