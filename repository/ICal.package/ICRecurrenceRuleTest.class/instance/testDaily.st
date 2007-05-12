testing
testDaily

	self testRule: 'FREQ=DAILY;COUNT=10'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 -> {'September' -> (2 to: 11) } }.

	self testRule: 'FREQ=DAILY;UNTIL=19971224T000000Z'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 ->
			{'September' -> (2 to: 30). 'October' -> (1 to: 31).
			'November' -> (1 to: 30). 'December' -> (1 to: 23) } }.

	self testRule: 'FREQ=DAILY;INTERVAL=2'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 15
		withDates: {1997 -> {'September' -> (2 to: 30 by: 2) } }.

	self testRule: 'FREQ=DAILY;INTERVAL=10;COUNT=5'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 -> {'September' -> #(2 12 22). 'October' -> #(2 12) } }.

	self testRule: 'FREQ=DAILY;UNTIL=20000131T090000Z;BYMONTH=1'					"NOTE: Very slow"
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1998 -> {'January' -> (1 to: 31)}. 1999 -> {'January' -> (1 to: 31)}. 2000 -> {'January' -> (1 to: 31) } }.

	self testRule: 'FREQ=DAILY;BYHOUR=9,10,11,12,13,14,15,16;BYMINUTE=0,20,40'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 5
		withDateAndTimes: {
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 20 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 9 minute: 40 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 0 second: 0.
			DateAndTime year: 1997 month: 9 day: 2 hour: 10 minute: 20 second: 0 }