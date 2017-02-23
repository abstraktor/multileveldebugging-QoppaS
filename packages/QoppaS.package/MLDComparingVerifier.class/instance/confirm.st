as yet unclassified
confirm
	"returns one of #debug #noAction or #disableChecking"
	((UserDialogBoxMorph new
		title: 'Inconsistent Primitive Results';
		message: self confirmText;
		createButton: 'Yes' translated value: #verifierConfirmDebug;
		createButton: 'No' translated  value: #verifierConfirmNoAction;
		createButton: 'Disable automatic checking' translated value: #verifierConfirmDisableChecking;
		selectedButtonIndex: 1; "YES"
		registerKeyboardShortcuts;
		yourself) in: [:dialog |
			^self changed: dialog getUserResponseAtHand])
		