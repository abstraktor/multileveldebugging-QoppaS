viewer
smalltalkViewer
	editorMorph styler: styler.
	styler ifNotNilDo: [:styler|
		styler classOrMetaClass: (self selectedActivation viewerClass)].
	self singleEditorViewer.