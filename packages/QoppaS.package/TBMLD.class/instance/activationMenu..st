actions
activationMenu: aMenu
	^ aMenu addList: #(
			('step into' 				doInto)
			('inspect' 				inspectActivation)
			('debug with default toolset' 				doDebugActivation)
			('compare' 				doCompareActivation)
			- 
			('proceed' 				doProceed));
		yourself