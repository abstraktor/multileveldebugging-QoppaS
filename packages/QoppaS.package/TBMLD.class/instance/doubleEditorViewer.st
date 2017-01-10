viewer
doubleEditorViewer
	window ifNotNilDo: [:x|
		window removeMorph: verifierMorph.
		window removeMorph: editorMorph.
		window addMorph: leftEditorMorph.
		window addMorph: rightEditorMorph].