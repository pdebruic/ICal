testCategories
testCategoryWithTitle
	| cat1 cat2 cat3 |
	cat1 := ICCategory title: 'cat1'.
	cat2 := ICCategory title: 'cat2'.
	cat3 := ICCategory title: 'cat3'.
	calendar
		addCategory: cat1;
		addCategory: cat2;
		addCategory: cat3.
	self assert: (calendar categoryWithTitle: 'cat1') == cat1.
	self assert: (calendar categoryWithTitle: 'cat2') == cat2.
	self assert: (calendar categoryWithTitle: 'cat3') == cat3.
	calendar removeCategory: cat1.
	self assert: (calendar categoryWithTitle: 'cat1') isNil