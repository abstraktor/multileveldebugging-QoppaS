*QoppaS-Verifier
outputMachineCodeAt: targetAddress
	"By default move machine code a byte at a time
	  Subclasses with coarser granularity can override as desired."
	<inline: true>
	"(targetAddress = Cogit debugConcretizationOf) ifTrue: [1 halt]."
	0 to: machineCodeSize - 1 do:
		[:j|
		objectMemory byteAt: targetAddress + j put: (machineCode at: j)]