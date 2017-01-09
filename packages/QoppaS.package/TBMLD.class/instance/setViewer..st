viewer
setViewer: aViewerName
	self assert: (#(c smalltalk cogit) includes: aViewerName).
	editorMorph ifNotNil: [:editorMorph |
		"tbd: let nodes implement their own Model to construct a morph for them"
		self perform: (aViewerName,'Viewer') asSymbol].