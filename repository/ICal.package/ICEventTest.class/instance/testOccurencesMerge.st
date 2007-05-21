testing
testOccurencesMerge

	self test: 5
		event: (self makeEvent: 'Test event'
			startingAt: '2006-10-01T19:00:00'
			endingAt: '2006-10-01T21:00:00'
			locatedAt: 'Test location'
			rules: #(
				'FREQ=MONTHLY;BYDAY=1FR;UNTIL=20061228T000000Z'
				'FREQ=MONTHLY;BYDAY=3MO;UNTIL=20061228T000000Z'
				))
		withDates: {2006 -> {10 -> #(6 16). 11 -> #(3 20). 12 -> #(1) } }
		andTime: (Time hour: 19 minute: 0 second: 0)