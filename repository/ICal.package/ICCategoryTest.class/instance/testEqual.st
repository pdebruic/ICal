tests
testEqual
	self deny: category1 = category2.
	self assert: category1 = (ICCategory title: 'tennis club').
	self assert: category2 = (ICCategory title: 'family')