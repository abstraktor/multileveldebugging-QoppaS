viewer
setViewer: aViewerName
	| morphsOfViewer |
	self viewerMorphs ifNil: ["still during setup" ^self].
	morphsOfViewer := self viewerMorphs associationsSelect: [:assoc|
		assoc key beginsWith: aViewerName, '_'].
	"self assert: morphsOfViewer isEmpty not."
	self viewerMorphs do: [:morph| window removeMorph: morph].
	window addMorph: dataInspectorMorph.
	morphsOfViewer do: [:morph| window addMorph: morph].
	
	"self assert: (#(c smalltalk cogit verifier) includes: aViewerName)."
	editorMorph ifNotNil: [:editorMorph | |selector|
		selector := (aViewerName,'Viewer') asSymbol.
		(self respondsTo: selector)
			ifTrue: [self perform: selector]].