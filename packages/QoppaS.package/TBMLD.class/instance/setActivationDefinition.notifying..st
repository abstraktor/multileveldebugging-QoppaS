toolbuilder
setActivationDefinition: newDefinition notifying: aController
	"toolbuilder hook for saving an edited method"
	^self debugger contents: newDefinition notifying: aController