user interface
runFallback: contextPart
	^contextPart 
		copyStack
		privRefreshWith: contextPart method withoutPrimitive;
		stepToEnd;
		top.