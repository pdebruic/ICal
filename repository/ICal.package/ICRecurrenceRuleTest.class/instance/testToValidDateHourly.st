testing
testToValidDateHourly
	|hourly ahead|

	hourly := ICRecurrenceRule new frequency: 'HOURLY';
		dtstart: (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 45 second: 0).

	ahead := DateAndTime year: 2007 month: 1 day: 1 hour: 13 minute: 15 second: 0.
	
	self should: (hourly toValidDate: ahead) = ahead.

	hourly interval: 3.

	self should: (hourly toValidDate: ahead) = (DateAndTime year: 2007 month: 1 day: 1 hour: 11 minute: 15 second: 0).