testing
testOccurencesWithExclusionRules

	self testEvent: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #('FREQ=MONTHLY;BYDAY=FR;UNTIL=20061228T000000Z')
			excludingRules: #('FREQ=MONTHLY;BYDAY=1FR;UNTIL=20061130T000000Z'))
		withDates: {2006 -> {10 -> #(13 20 27). 11 -> #(10 17 24). 12 -> #(1 8 15 22) } }
		andTime: (Time hour: 19 minute: 0 second: 0)