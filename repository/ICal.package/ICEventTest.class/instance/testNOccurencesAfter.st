testing
testNOccurencesAfter
	| oct |
	
	oct := (self dateClass year: 2006 month: 10 day: 7) asDateAndTime.
	
	self test: 2
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;UNTIL=20061228T000000Z'))
		after: oct
		withDates: {2006 -> {11 -> #(3). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self test: 6
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=4'))
		after: oct
		withDates:
			{2006 -> {11 -> #(3). 12 -> #(1) }.
			2007 -> {1 -> #(5)} }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self test: 2
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=4;INTERVAL=2'))
		after: oct
		withDates: {2006 -> {12 -> #(1) }. 2007 -> {2 -> #(2)} }
		andTime: (Time hour: 19 minute: 0 second: 0).