testing
testAddYears

	self should: (secondly
		addYears: 2
		to: (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2009 month: 1 day: 1 hour: 8 minute: 0 second: 0).

	self should: (secondly
		addYears: 1
		to: (DateAndTime year: 2007 month: 3 day: 1 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2008 month: 2 day: 29 hour: 8 minute: 0 second: 0).

	self should: (secondly
		addYears: 2
		to: (DateAndTime year: 2007 month: 3 day: 1 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2009 month: 3 day: 1 hour: 8 minute: 0 second: 0).