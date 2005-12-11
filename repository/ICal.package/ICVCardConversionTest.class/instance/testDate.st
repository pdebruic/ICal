testing
testDate
	| date |
	date := Date newDay: 12 month: 4 year: 1985.
	self assert: date asVCardString = '1985-04-12'.

	date := Date newDay: 5 month: 8 year: 1996.
	self assert: date asVCardString = '1996-08-05'.

	date := Date newDay: 11 month: 11 year: 1996.
	self assert: date asVCardString = '1996-11-11'.