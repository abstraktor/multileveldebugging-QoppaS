as yet unclassified
groupNodes: aStackOfContextNodes
	| currentParentNode |
	^ OrderedCollection streamContents: [:outputNodes |
		aStackOfContextNodes do: [:inputNode |
			(self isOld: inputNode)
				ifTrue: [currentParentNode ifNil: [currentParentNode := VirtualContextNode new.
						currentParentNode summary: 'old code'.
						outputNodes nextPut: currentParentNode  ].
					currentParentNode addChild: inputNode ]
				ifFalse: [currentParentNode := nil.
					outputNodes nextPut: inputNode  ] ] ]