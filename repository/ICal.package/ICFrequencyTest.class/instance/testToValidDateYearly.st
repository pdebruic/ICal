testing
testToValidDateYearly
	|ahead behind|

	ahead := DateAndTime year: 2015 month: 6 day: 9 hour: 15 minute: 15 second: 0.
	behind := DateAndTime year: 2000 month: 1 day: 19 hour: 3 minute: 55 second: 0.

	yearly interval: 3.

	self should: (yearly toValidDate: ahead) = (DateAndTime year: 2013 month: 6 day: 9 hour: 15 minute: 15 second: 0).
	self should: (yearly toValidDate: behind) = (DateAndTime year: 1998 month: 1 day: 19 hour: 3 minute: 55 second: 0).

	"Only left temporarily because the behind behaviour can't be tested from ICRecurrenceRule (though it should be irrelevant)"