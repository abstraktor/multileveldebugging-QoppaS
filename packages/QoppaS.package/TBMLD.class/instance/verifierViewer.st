viewer
verifierViewer
	"window ifNotNilDo: [:x|
		window addMorph: verifierMorph.
		window removeMorph: editorMorph.
		window removeMorph: leftEditorMorph.
		window removeMorph: rightEditorMorph]."