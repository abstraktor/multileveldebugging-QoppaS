as yet unclassified
confirm
	"returns true to debug, false to not debug and nil to disable comparison"
	^(UserDialogBoxMorph new
		title: 'Inconsistent Primitive Results';
		message: self confirmText;
		createButton: 'Yes' translated value: #debug;
		createButton: 'No' translated  value: #noAction;
		createButton: 'Disable checking' translated value: #disableChecking;
		selectedButtonIndex: 1; "YES"
		registerKeyboardShortcuts;
		yourself) in: [:dialog |
			^dialog getUserResponseAtHand]