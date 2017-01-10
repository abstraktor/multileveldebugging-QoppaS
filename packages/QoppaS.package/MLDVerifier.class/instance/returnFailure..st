as yet unclassified
returnFailure: errorCode
	^self name -> (MLDVerificationResult ofVerifier: self withErrorCode: errorCode).