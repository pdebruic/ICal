testing
testToValidDateMonthly
	|monthly ahead|

	monthly := ICRecurrenceRule new frequency: 'MONTHLY';
		dtstart: (DateAndTime year: 2007 month: 4 day: 1 hour: 8 minute: 0 second: 0).

	ahead := DateAndTime year: 2007 month: 9 day: 1 hour: 8 minute: 0 second: 0.
	
	self should: (monthly toValidDate: ahead) = ahead.

	monthly interval: 3.

	self should: (monthly toValidDate: ahead) = (DateAndTime year: 2007 month: 7 day: 1 hour: 8 minute: 0 second: 0).