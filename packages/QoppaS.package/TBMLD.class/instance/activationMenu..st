actions
activationMenu: aMenu
	^ aMenu addList: #(
			('step' 				doSend)
			('inspect' 				inspectActivation)
			- 
			('proceed' 				doProceed));
		yourself