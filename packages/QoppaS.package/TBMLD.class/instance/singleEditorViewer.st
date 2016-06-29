editor
singleEditorViewer
	window ifNotNilDo: [:x|
		window addMorph: editorMorph.
		window removeMorph: leftEditorMorph.
		window removeMorph: rightEditorMorph].