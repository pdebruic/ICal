testing
testToValidDateMinutely
	|minutely ahead|

	minutely := ICRecurrenceRule new frequency: 'MINUTELY';
		dtstart: (DateAndTime year: 2007 month: 1 day: 1 hour: 8 minute: 10 second: 10).

	ahead := DateAndTime year: 2007 month: 1 day: 1 hour: 13 minute: 15 second: 0.
	
	self should: (minutely toValidDate: ahead) = ahead.

	minutely interval: 3.

	self should: (minutely toValidDate: ahead) = (DateAndTime year: 2007 month: 1 day: 1 hour: 13 minute: 13 second: 0).