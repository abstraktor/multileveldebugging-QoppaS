toolbuilder
contentViewerSpecsWith: builder
	| viewers |
	viewers := Dictionary newFrom: {
		#smalltalk -> {
			(0@0 corner: 1@0.8) -> [self buildSingleEditorWith: builder].
			(0@0.8 corner: 1@1) -> [self buildDataInspectorWith: builder]}.
		#verifier -> {
			(0@0 corner: 1@0.8) -> [(self levelRepo verifier buildWith: builder) name: #verifier]}.
		#double -> {
			(0@0 corner: 0.5@0.8) -> [self buildLeftEditorWith: builder].
			(0.5@0 corner: 1@0.8) -> [self buildRightEditorWith: builder]}.
	}.
	
	viewers addAll: (self levelRepo contentViewerSpecsWith: builder).
	
	viewers keysAndValuesDo: [:name :specs|
		specs doWithIndex: [:spec :i| | specBlock |
			specBlock := spec value.
			spec value: [specBlock value name: name, '_', i; yourself]]].
	
	^viewers