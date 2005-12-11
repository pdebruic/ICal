testing
testParseDate
	| string date |
	string := '1985-04-12'.
	date := Date fromVCardString: string.
	self assert: date = (Date year: 1985 month: 4 day: 12).

	string := '1996-08-05'.
	date := Date fromVCardString: string.
	self assert: date = (Date year: 1996 month: 8 day: 5).

	string := '1996-11-11'.
	date := Date fromVCardString: string.
	self assert: date = (Date year: 1996 month: 11 day: 11).

	string := '19850412'.
	date := Date fromVCardString: string.
	self assert: date = (Date year: 1985 month: 4 day: 12).