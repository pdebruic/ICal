testing
testToValidDateSecondly
	|secondly ahead|

	secondly := ICRecurrenceRule new frequency: 'SECONDLY';
		dtstart: (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 10 second: 10).

	ahead := DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 10 second: 15.
	
	self should: (secondly toValidDate: ahead) = ahead.

	secondly interval: 3.

	self should: (secondly toValidDate: ahead) = (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 10 second: 13).