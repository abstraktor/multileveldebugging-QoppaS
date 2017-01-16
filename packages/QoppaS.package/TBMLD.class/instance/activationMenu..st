actions
activationMenu: aMenu
	^ aMenu addList: {
			#('step into' 				doInto).
			#('over and inspect' 					doOverAndInspectActivation).
			#('inspect' 				inspectActivation).
			#('debug with default toolset' 				doDebugActivation).
			#('compare' 				doCompareActivation).
			#- .
			#('proceed' 				doProceed).
			self isVerifierEnabled
				ifTrue: [	#('disable comparing verification' disableVerifier)]
				ifFalse: [#('enable comparing verification' enableVerifier)]};
		yourself