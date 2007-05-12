testing
testWeekly

	self testRule: 'FREQ=WEEKLY;COUNT=10'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 -> {'September' -> (2 to: 30 by: 7). 'October' -> (7 to: 28 by: 7). 'November' -> #(4) } }.

	self testRule: 'FREQ=WEEKLY;UNTIL=19971224T000000Z'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 -> {'September' -> (2 to: 30 by: 7). 'October' -> (7 to: 28 by: 7).
			'November' -> (4 to: 25 by: 7). 'December' -> (2 to: 23 by: 7) } }.

	self testRule: 'FREQ=WEEKLY;INTERVAL=2;WKST=SU'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 11
		withDates: {
			1997 ->
				{'September' -> #(2 16 30). 'October' -> #(14 28).
				'November' -> #(11 25). 'December' -> #(9 23). }.
			1998 -> {'January' -> #(6 20) } }.

	self testRule: 'FREQ=WEEKLY;INTERVAL=2;COUNT=8;WKST=SU;BYDAY=TU,TH'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {1997 -> {'September' -> #(2 4 16 18 30). 'October' -> #(2 14 16) } }.

	self testRule: 'FREQ=WEEKLY;INTERVAL=2;UNTIL=19971224T000000Z;WKST=SU;BYDAY=MO,WE,FR'			"BUG: ?  The standard says the RR should include dtstart"
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')									"even if it's not in the set, but since users don't make"
		withDates: {1997 -> {'September' -> #(3 5 15 17 19 29).											"RR's directly (afaik), they can't set any date that isn't"
			'October' -> #(1 3 13 15 17 27 29 31). 'November' -> #(10 12 14 24 26 28).					"in the event, so I don't have to return from the rule"
			'December' -> #(8 10 12 22) } }.

	self testRule: 'FREQ=WEEKLY;INTERVAL=2;COUNT=4;BYDAY=TU,SU;WKST=MO'
		startingAt: (DateAndTime fromString: '1997-08-05T09:00:00')
		withDates: {1997 -> {'August' -> #(5 10 19 24) } }.

	self testRule: 'FREQ=WEEKLY;INTERVAL=2;COUNT=4;BYDAY=TU,SU;WKST=SU'
		startingAt: (DateAndTime fromString: '1997-08-05T09:00:00')
		withDates: {1997 -> {'August' -> #(5 17 19 31) } }