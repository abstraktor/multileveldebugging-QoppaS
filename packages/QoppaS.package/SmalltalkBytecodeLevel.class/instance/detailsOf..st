as yet unclassified
detailsOf: anActivation
	 ^ anActivation isActualContextNode
		ifTrue: [anActivation contextPart method symbolic asText
			copyReplaceAll: '	' with: '    ']
		ifFalse: ['']