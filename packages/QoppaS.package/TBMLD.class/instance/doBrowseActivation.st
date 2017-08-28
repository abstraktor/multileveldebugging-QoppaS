actions
doBrowseActivation
	| method |
	method := self selectedActivation method.
	ToolSet browse: method methodClass selector: method selector.
	