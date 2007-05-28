testing
testNOccurencesBetween
	| sept apr |
	
	sept := (self dateClass year: 2006 month: 9 day: 1) asDateAndTime.
	apr := (self dateClass year: 2007 month: 4 day: 1) asDateAndTime.

	self test: 1
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-18T19:00:00'
			endingAt: '2006-10-18T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;UNTIL=20071228T000000Z'))
		between: sept and: apr
		withDates: {2006 -> {11 -> #(3) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self test: 4
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-18T19:00:00'
			endingAt: '2006-10-18T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=7'))
		between: sept and: apr
		withDates:
			{2006 -> {11 -> #(3). 12 -> #(1) }.
			2007 -> {1 -> #(5). 2 -> #(2) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self test: 2
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-1T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;INTERVAL=2'))
		between: sept and: apr
		withDates: {2006 -> {10 -> #(6). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0)