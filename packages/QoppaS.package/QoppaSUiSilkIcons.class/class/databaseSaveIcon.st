accessing
databaseSaveIcon
	"Auto-generated.
	
	Silk Icons
	© 2005-2006 Mark James
	Website: http://www.famfamfam.com
	License: http://creativecommons.org/licenses/by/2.5"
	
	^ Icons
		at: #silkDatabaseSave
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self databaseSaveIconContents readStream) ].