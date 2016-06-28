actions
activationMenu: aMenu
	^ aMenu addList: #(
			('step into' 				doInto)
			('inspect' 				inspectActivation)
			- 
			('proceed' 				doProceed));
		yourself