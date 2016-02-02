source
rememberSourceOf: aForm madeFrom: anOhmNode
	self
		rememberInterval:
			(Interval from: anOhmNode interval start to: anOhmNode interval end)
				- currentTopLevelFormOhmNode interval start
		inSourceOf: currentTopLevelForm 
		for: aForm.