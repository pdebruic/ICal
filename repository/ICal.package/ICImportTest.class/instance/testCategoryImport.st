testing
testCategoryImport
	self assert: (parser categoryForString: 'private') 
				= 'private'.
	self assert: (parser categoryForString: 'business') 
				= 'business'