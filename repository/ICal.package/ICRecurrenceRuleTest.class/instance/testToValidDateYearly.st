testing
testToValidDateYearly
	|yearly ahead|

	yearly := ICRecurrenceRule new frequency: 'YEARLY';
		dtstart: (DateAndTime year: 2007 month: 3 day: 15 hour: 8 minute: 45 second: 0).

	ahead := DateAndTime year: 2015 month: 6 day: 9 hour: 15 minute: 15 second: 0.
	
	self should: (yearly toValidDate: ahead) = ahead.

	yearly interval: 3.

	self should: (yearly toValidDate: ahead) = (DateAndTime year: 2013 month: 6 day: 9 hour: 15 minute: 15 second: 0).