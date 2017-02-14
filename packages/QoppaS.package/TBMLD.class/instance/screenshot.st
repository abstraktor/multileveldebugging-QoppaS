paperwork
screenshot
(FileStream newFileNamed: Time dateAndTimeNow first yyyymmdd,'-debugger.eps' asFileName)
	nextPutAll: self asEPS;
	close