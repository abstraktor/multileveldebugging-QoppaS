as yet unclassified
mldGroupingEnabled
	<preference: '4 Group related frames in multilevel debugger in QoppaS REPL' category: 'QoppaS' description: 'When enabled, QoppaFrames are grouped together so that the Qoppa-Stack gets visible.' type: #Boolean>  
	^ EnableMLDGrouping 
		ifNil: [EnableMLDGrouping := true]