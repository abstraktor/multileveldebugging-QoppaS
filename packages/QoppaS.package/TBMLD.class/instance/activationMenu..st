actions
activationMenu: aMenu
	^ aMenu addList: #(
			('step' 				doStep)
			('inspect' 				inspectActivation)
			- 
			('proceed' 				doProceed));
		yourself