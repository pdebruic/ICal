tests
testIsValidForDate
	| testData |
	testData := Array with: appointment with: serie.
	testData do: [:each | 
		self assert: (each isValidForDate: (Date year: 2005 month: 4 day: 18)).
		self deny: (each isValidForDate: (Date year: 2005 month: 4 day: 17)).
		self deny: (each isValidForDate: (Date year: 2005 month: 4 day: 19)).
		self deny: (each isValidForDate: (DateAndTime year: 2005 month: 4 day: 18 hour: 23 minute: 0)).
		
		self deny: (each startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 23 minute: 0)).
		self assert: (each startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 21 minute: 1)).
		self deny: (each startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 23 minute: 59)).
		self deny: (each startsInHour: (TimeStamp year: 2005 month: 4 day: 17 hour: 20 minute: 20)).
		self deny: (each startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 24 minute: 0))].
	
	
	self assert: (serie startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 17 minute: 0)).
	self deny: (serie startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 20 minute: 0)).
	self assert: (serie startsInHour: (TimeStamp year: 2005 month: 4 day: 18 hour: 16 minute: 59))