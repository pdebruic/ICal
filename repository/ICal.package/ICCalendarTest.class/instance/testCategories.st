testCategories
testCategories
	"test here methods to add and remove categories"

	| size collection c1 c2 c3 |
	size := ICCategory defaultCategories size + 1.
	calendar addCategory: category1.
	self assert: calendar categories size = (size + 1).
	self assert: (calendar categoryWithTitle: 'personal') == category1.
	calendar removeCategory: category1.
	self assert: calendar categories size = size.
	c1 := ICCategory title: 'school'.
	c2 := ICCategory title: 'home'.
	c3 := ICCategory title: 'friends'.
	collection := OrderedCollection 
				with: c1
				with: c2
				with: c3.
	calendar categories: collection.
	self assert: calendar categories size = 3.
	self assert: (calendar categories at: 2) == c2.
	self assert: calendar categories == collection.
	self assert: (calendar categoryWithTitle: 'friends') == c3