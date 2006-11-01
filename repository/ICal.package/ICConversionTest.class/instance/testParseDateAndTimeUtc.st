testing
testParseDateAndTimeUtc
	| string dateAndTime |
	string := '19980118T230000Z'.
	dateAndTime := DateAndTime fromICalString: string.
	
	self assert: string = dateAndTime asICalUtcString.
	self assert: dateAndTime = (DateAndTime year: 1998 month: 1 day: 18 hour: 23 minute: 0 second: 0)