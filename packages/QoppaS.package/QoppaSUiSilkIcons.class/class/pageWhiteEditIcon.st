accessing
pageWhiteEditIcon
	"Auto-generated.
	
	Silk Icons
	© 2005-2006 Mark James
	Website: http://www.famfamfam.com
	License: http://creativecommons.org/licenses/by/2.5"
	
	^ Icons
		at: #silkPageWhiteEdit
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pageWhiteEditIconContents readStream) ].