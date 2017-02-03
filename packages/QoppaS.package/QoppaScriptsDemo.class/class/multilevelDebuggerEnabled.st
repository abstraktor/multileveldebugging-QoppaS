as yet unclassified
multilevelDebuggerEnabled
	<preference: 'Use multilevel debugger in QoppaS REPL' category: 'QoppaS' description: 'When disabled, the Squeak Debugger is used.' type: #Boolean>  
	^ UseMultilevelDebugger 
		ifNil: [UseMultilevelDebugger := true]