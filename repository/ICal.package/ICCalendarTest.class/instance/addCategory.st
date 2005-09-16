testCategories
addCategory
	| cat1 cat2 categoryNumber |
	cat1 := ICCategory title: 'cat1'.
	cat1
		color: 'blue';
		explanation: 'for ???'.
	cat2 := ICCategory title: 'cat2'.
	cat2
		color: 'green';
		explanation: 'for ???'.
	categoryNumber := calendar categories size.
	calendar addCategory: cat1.
	self assert: calendar categories size = (categoryNumber + 1).
	calendar addCategory: cat2.
	self assert: calendar categories size = (categoryNumber + 2)