as yet unclassified
mldShowLevels
	<preference: '2 Show levels in multilevel debugger in QoppaS REPL' category: 'QoppaS' description: 'When enabled, the levels that the frames are within are listed.' type: #Boolean>  
	^ MLDShowLevels 
		ifNil: [MLDShowLevels := true]