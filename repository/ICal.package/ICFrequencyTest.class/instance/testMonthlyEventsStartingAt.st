testing
testMonthlyEventsStartingAt
	|start|

	start := DateAndTime year: 2007 month: 9 day: 12 hour: 8 minute: 45 second: 0.

	self should: ((monthly eventsStartingAt: start) take: 3) asOrderedCollection =
		{	DateAndTime year: 2007 month: 9 day: 15 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2007 month: 10 day: 15 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2007 month: 11 day: 15 hour: 8 minute: 45 second: 0 } asOrderedCollection.

	monthly interval: 3.
	monthly weekdays add: 'SA'.
	monthly monthdays addAll: #(7 8 9 10 11 12 13).

	self should: ((monthly eventsStartingAt: start) take: 3) asOrderedCollection =
		{ DateAndTime year: 2007 month: 12 day: 8 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2008 month: 3 day: 8 hour: 8 minute: 45 second: 0.
			DateAndTime year: 2008 month: 6 day: 7 hour: 8 minute: 45 second: 0. } asOrderedCollection.