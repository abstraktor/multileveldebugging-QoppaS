actions
doBrowseActivation
	self selectedActivation ifNotNil: [:activation| activation browse]
	