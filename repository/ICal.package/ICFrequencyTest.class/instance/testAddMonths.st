testing
testAddMonths

	self should: (secondly
		addMonths: 6
		to: (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2007 month: 7 day: 1 hour: 8 minute: 0 second: 0).

	self should: (secondly
		addMonths: 1
		to: (DateAndTime year: 2007 month: 1 day: 31 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2007 month: 2 day: 28 hour: 8 minute: 0 second: 0).

	self should: (secondly
		addMonths: 4
		to: (DateAndTime year: 2007 month: 1 day: 31 hour: 8 minute: 0 second: 0))
			= (DateAndTime year: 2007 month: 5 day: 31 hour: 8 minute: 0 second: 0).