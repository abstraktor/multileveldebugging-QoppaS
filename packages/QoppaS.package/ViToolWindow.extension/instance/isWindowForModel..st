*QoppaS
isWindowForModel: aModel
	"In addition to the base behavior, return true also if this window uses aModel as input for its scripts."
	^ (super isWindowForModel: aModel)
		or: [self editor objects includes: aModel]