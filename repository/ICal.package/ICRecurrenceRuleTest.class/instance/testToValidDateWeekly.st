testing
testToValidDateWeekly
	|weekly ahead|

	weekly := ICRecurrenceRule new frequency: 'WEEKLY';
		dtstart: (DateAndTime year: 2007 month: 1 day: 8 hour: 8 minute: 0 second: 0).

	ahead := DateAndTime year: 2007 month: 1 day: 22 hour: 8 minute: 0 second: 0.
	
	self should: (weekly toValidDate: ahead) = ahead.

	weekly interval: 3.

	self should: (weekly toValidDate: ahead) = (DateAndTime year: 2007 month: 1 day: 8 hour: 8 minute: 0 second: 0).