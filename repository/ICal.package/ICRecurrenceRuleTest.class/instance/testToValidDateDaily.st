testing
testToValidDateDaily
	|daily ahead|

	daily := ICRecurrenceRule new frequency: 'DAILY';
		dtstart: (DateAndTime year: 2007 month: 3 day: 15 hour: 8 minute: 45 second: 0).

	ahead := DateAndTime year: 2007 month: 4 day: 4 hour: 15 minute: 15 second: 0.

	self should: (daily toValidDate: ahead) = ahead.

	daily interval: 3.

	self should: (daily toValidDate: ahead) = (DateAndTime year: 2007 month: 4 day: 2 hour: 15 minute: 15 second: 0).