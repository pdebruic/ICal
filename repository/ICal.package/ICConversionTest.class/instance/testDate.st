testing
testDate
	| date |
	date := Date newDay: 1 month: 1 year: 1901.
	self assert: '19010101'  = date asICalString.
	
	date := Date newDay: 1 month: 2 year: 1901.
	self assert: '19010201'  = date asICalString.
	
	date := Date newDay: 22 month: 11 year: 1901.
	self assert: '19011122'  = date asICalString.
	
	date := Date newDay: 14 month: 7 year: 1997.
	self assert: '19970714'  = date asICalString.