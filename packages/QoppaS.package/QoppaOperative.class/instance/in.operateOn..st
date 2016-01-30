operating
in: anEnvironmentCons operateOn: aConsOfOperands
	"TODO: fix this to respect the dynamic environment"
	self flag: #operativeArguments.
	^ block value: aConsOfOperands