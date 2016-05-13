as yet unclassified
testConsListDoOnNil
	nil consListDo: [:each | self fail: 'this block should not be called']