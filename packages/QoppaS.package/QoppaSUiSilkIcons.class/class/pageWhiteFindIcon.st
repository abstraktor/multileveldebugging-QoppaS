accessing
pageWhiteFindIcon
	"Auto-generated.
	
	Silk Icons
	© 2005-2006 Mark James
	Website: http://www.famfamfam.com
	License: http://creativecommons.org/licenses/by/2.5"
	
	^ Icons
		at: #silkPageWhiteFind
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pageWhiteFindIconContents readStream) ].