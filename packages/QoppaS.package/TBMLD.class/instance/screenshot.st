paperwork
screenshot
(FileStream newFileNamed: '/Users/reflektor/swa/masterthesis/walkthrough/',Time dateAndTimeNow first yyyymmdd,'-',TBMLD nextScreenshotId,'-debugger.eps' asFileName)
	nextPutAll: window asEPS;
	close