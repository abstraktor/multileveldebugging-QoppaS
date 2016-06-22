bulk loading
loadFrom: aPath

	| dir accessorTemplate contentsTemplate |
	dir := FileDirectory on: aPath.
	accessorTemplate := '{2}Icon
	"Auto-generated.
	
	{3}"
	
	^ Icons
		at: #fugue{1}
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self {2}IconContents readStream) ].'.
	contentsTemplate := '{1}IconContents
	"Auto-generated.

	{3}"
	
	^ ''{2}'''.
	
	dir fileNames do: [:fileName | |tokens selector|
		tokens := (fileName allButLast: 4) findTokens: $-.
		selector := (tokens inject: '' into: [:all :each | all, each capitalized]) withFirstCharacterDownshifted.
		
		self class
			compile: (contentsTemplate format: {selector. (MenuIcons base64ContentsOfFileNamed: aPath, '\', fileName). self license})
			classified: 'contents';
			compile: (accessorTemplate format: {selector capitalized. selector. self license})
			classified: 'accessing'] displayingProgress: [:fileName | 'Loading ', fileName, '...'].