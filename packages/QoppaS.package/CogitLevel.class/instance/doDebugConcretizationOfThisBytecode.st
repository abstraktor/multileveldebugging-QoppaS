actions
doDebugConcretizationOfThisBytecode
	"debugs the code that translates the smalltalk bytecode into native machinecode"
	| found needle address methodOrDoitString |
	self selectedActivation isActualContextNode ifFalse: [^''].

	needle := self contentLines at: lastClickedContentLineIndex.
	address := (Integer readFrom: needle asString radix: 16). "this is the absolute address"

	methodOrDoitString := self selectedActivation contextPart method.
	found := false.
	[ | optionsDictionaryOrArray stream tuple |
		"find hilPc"
		stream := WriteStream on: (String new: 1000).
		optionsDictionaryOrArray := {
			#ObjectMemory. #Spur32BitCoMemoryManager.
			#debugConcretizationOf. address}.
		tuple := SimpleStackBasedCogit 
			cog: methodOrDoitString
			selectorOrNumCopied: methodOrDoitString selector
			options: optionsDictionaryOrArray.
		tuple second disassembleMethod: tuple last on: stream.
		self notify: 'Sorry, I can''find it:', String cr, String cr,
			'I was waiting for ', address, String cr,
			'But it was never written']
	on: WaitAndRaiseFoundIt do: [:e|
			found := true.
			"Processor activeProcess debug: e2 needleWritingContext title: 'ho'."
			TBMLD step: (e needleWritingContext "copyStack restart
				stepUntil: [:ctxt| ctxt method selector = #dispatchConcretize]
				stepToSendOrReturn")].