testing
testOccurences

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;UNTIL=20061228T000000Z'))
		withDates: {2006 -> {10 -> #(6). 11 -> #(3). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-18T19:00:00'
			endingAt: '2006-10-18T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=4'))
		withDates:
			{2006 -> {11 -> #(3). 12 -> #(1) }.
			2007 -> {1 -> #(5). 2 -> #(2) } }
		andTime: (Time hour: 19 minute: 0 second: 0).

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-1T19:00:00'
			endingAt: '2006-10-1T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=1FR;COUNT=2;INTERVAL=2'))
		withDates:
			{2006 -> {10 -> #(6). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0).