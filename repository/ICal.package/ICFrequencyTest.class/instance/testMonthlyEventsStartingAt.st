testing
testMonthlyEventsStartingAt
	|start|
	"NOTE: Honestly this method should probably be in ICRecurrenceRule and every filter should be test here so a break can be seen quickly"

	start := DateAndTime year: 2007 month: 9 day: 12 hour: 8 minute: 45 second: 0.

	self should: ((monthly eventsStartingAt: start) take: 3) asOrderedCollection =
		{ DateAndTime year: 2007 month: 3 day: 15 hour: 8 minute: 45 second: 0.						"#bug.  This is before the start date"
			DateAndTime year: 2007 month: 4 day: 15 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2007 month: 5 day: 15 hour: 8 minute: 45 second: 0. } asOrderedCollection.

	monthly interval: 3.
	monthly weekdays add: 'SA'.
	monthly monthdays addAll: #(7 8 9 10 11 12 13).

	self should: ((monthly eventsStartingAt: start) take: 3) asOrderedCollection =
		{ DateAndTime year: 2007 month: 4 day: 7 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2007 month: 7 day: 7 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2007 month: 10 day: 13 hour: 8 minute: 45 second: 0. } asOrderedCollection.
