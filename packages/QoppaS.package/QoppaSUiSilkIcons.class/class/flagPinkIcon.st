accessing
flagPinkIcon
	"Auto-generated.
	
	Silk Icons
	© 2005-2006 Mark James
	Website: http://www.famfamfam.com
	License: http://creativecommons.org/licenses/by/2.5"
	
	^ Icons
		at: #silkFlagPink
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self flagPinkIconContents readStream) ].