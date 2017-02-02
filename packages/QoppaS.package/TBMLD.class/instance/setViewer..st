viewer
setViewer: aViewerName
	| morphsOfViewer |
	self viewerMorphs ifNil: ["still during" ^self].
	morphsOfViewer := self viewerMorphs keysAndValuesDo: [:name :morph|
		name beginsWith: aViewerName].
	self assert: morphsOfViewer isEmpty not.
	self viewerMorphs do: [:morph| window removeMorph: morph].
	morphsOfViewer do: [:morph| window addMorph: morph].
	
	"self assert: (#(c smalltalk cogit verifier) includes: aViewerName)."
	editorMorph ifNotNil: [:editorMorph | |selector|
		selector := (aViewerName,'Viewer') asSymbol.
		(self respondsTo: selector)
			ifTrue: [self perform: selector]].