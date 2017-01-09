viewer
doubleEditorViewer
	window ifNotNilDo: [:x|
		window removeMorph: editorMorph.
		window addMorph: leftEditorMorph.
		window addMorph: rightEditorMorph].