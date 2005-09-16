tests
testCategoryImport
	self assert: (parser categoryForString: 'private') 
				= (ICCategory defaultCategories second).
	self assert: (parser categoryForString: 'business') 
				= (ICCategory defaultCategories first)