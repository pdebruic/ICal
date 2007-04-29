testing
testToValidDateYearly
	|ahead behind|

	ahead := DateAndTime year: 2015 month: 6 day: 9 hour: 15 minute: 15 second: 0.
	behind := DateAndTime year: 2000 month: 1 day: 19 hour: 3 minute: 55 second: 0.
	
	self should: (yearly toValidDate: ahead) = ahead.
	self should: (yearly toValidDate: behind) = behind.

	yearly interval: 3.

	self should: (yearly toValidDate: ahead) = (DateAndTime year: 2013 month: 6 day: 9 hour: 15 minute: 15 second: 0).
	self should: (yearly toValidDate: behind) = (DateAndTime year: 1998 month: 1 day: 19 hour: 3 minute: 55 second: 0).

	#todo.
	"yearly interval: 1.											Needs to be put in ICRecurrenceRule
	yearly count: 3.

	self should: (yearly toValidDate: ahead) = yearly dtstart.
	self should: (yearly toValidDate: behind) = yearly dtstart."