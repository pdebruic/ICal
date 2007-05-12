testing
testMinutely

	self testRule: 'FREQ=MINUTELY;INTERVAL=15;COUNT=6'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDateAndTimes: {
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 15 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 30 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 45 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 15 second: 0 }.

	self testRule: 'FREQ=MINUTELY;INTERVAL=90;COUNT=4'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDateAndTimes: {
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 30 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 12 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 13 minute: 30 second: 0 }.

	self testRule: 'FREQ=MINUTELY;INTERVAL=20;BYHOUR=9,10,11,12,13,14,15,16'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 5
		withDateAndTimes: {
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 20 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 40 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 20 second: 0 }