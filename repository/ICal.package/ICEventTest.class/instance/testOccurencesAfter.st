testing
testOccurencesAfter
	|oct|
	
	oct := (self dateClass year: 2006 month: 10 day: 18) asDateAndTime.

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-18T19:00:00'
			endingAt: '2006-10-18T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;UNTIL=20061228T000000Z'))
		after: oct
		withDates: {2006 -> {11 -> #(3). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-18T19:00:00'
			endingAt: '2006-10-18T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=4'))
		after: oct
		withDates:
			{2006 -> {11 -> #(3). 12 -> #(1) }.
			2007 -> {1 -> #(5). 2 -> #(2) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

"	self assert: (self compare: (event occurrencesAfter: (self dateClass year: 2007 month: 3 day: 1))
		with: (OrderedCollection new)). "

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-1T19:00:00'
			endingAt: '2006-10-1T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=2;INTERVAL=2'))
		after: oct
		withDates:
			{2006 -> {12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0).