viewer
singleEditorViewer
	window ifNotNilDo: [:x|
		window addMorph: editorMorph.
		window removeMorph: verifierMorph.
		window removeMorph: leftEditorMorph.
		window removeMorph: rightEditorMorph].