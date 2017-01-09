toolbuilder
buildLevelListWith: builder
	| levelList |
	levelList := builder pluggableTreeSpec new
		model: self;
		roots: #levels;
		icon: #levelIcon:;
		label: #label:;
		getSelected: #selectedLevel;
		setSelected: #selectedLevel:;
		menu: #levelMenu:;
		yourself.
	^levelList