testing
testHourly

	self testRule: 'FREQ=HOURLY;INTERVAL=3;UNTIL=19970902T170000Z'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDateAndTimes: {
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 12 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 15 minute: 0 second: 0 }.