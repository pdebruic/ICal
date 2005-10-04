testing
testParseDate
	| string date |
	string := '19970714'.
	date := Date fromICalString: string.
	
	self assert: string = date asICalString.
	self assert: date = (Date year: 1997 month: 7 day: 14)