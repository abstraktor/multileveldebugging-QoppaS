as yet unclassified
verifyPrimitive: primitiveIndex rcv: receiver args: arguments
	self inform: (
		'Running VM: ',
		Character tab,
		(self vmVerifyPrimitive: primitiveIndex rcv: receiver args: arguments),
		Character cr, 
		
		'Fallback: ',
		Character tab,
		(self fbVerifyPrimitive: primitiveIndex rcv: receiver args: arguments),
		Character cr,
		 
		'Slang: ',
		Character tab,
		(self slangVerifyPrimitive: primitiveIndex rcv: receiver args: arguments)
	).