as yet unclassified
extensionApiEnabled
		<preference: 'Use multilevel debugger extension API' category: 'QoppaS' description: 'When enabled, the debugger can be augmented by inheritance of the DebuggerLevel class' type: #Boolean>  
	^ UseExtensionApi 
		ifNil: [UseExtensionApi := true]
