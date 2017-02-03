as yet unclassified
mldIconsEnabled
	<preference: '1 Use icons in multilevel debugger in QoppaS REPL' category: 'QoppaS' description: 'When enabled, icons are shown, grouping frames.' type: #Boolean>  
	^ EnableMLDIcons 
		ifNil: [EnableMLDIcons := true]