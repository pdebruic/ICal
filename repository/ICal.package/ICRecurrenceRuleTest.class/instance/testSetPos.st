testing
testSetPos

	self testRule: 'FREQ=MONTHLY;COUNT=3;BYDAY=TU,WE,TH;BYSETPOS=3'
		startingAt: (DateAndTime fromString: '1997-09-01T09:00:00')
		withDates: {1997 -> {'September' -> #(4). 'October' -> #(7). 'November' -> #(6)} }.

	self testRule: 'FREQ=MONTHLY;BYDAY=MO,TU,WE,TH,FR;BYSETPOS=-2'
		startingAt: (DateAndTime fromString: '1997-09-29T09:00:00')
		take: 7
		withDates: {
			1997 -> {'September' -> #(29). 'October' -> #(30).
				'November' -> #(27). 'December' -> #(30) }.
			1998 -> {'January' -> #(29). 'February' -> #(26). 'March' -> #(30) } }.

	self testRule: 'FREQ=MONTHLY;COUNT=3;BYDAY=TU,WE,TH;BYSETPOS=3'					"BUG: My strategy is to start at dtstart.  The standard seems to start at the boundry"
		startingAt: (DateAndTime fromString: '1997-09-04T09:00:00')						"of the time period for dtstart and simply trim all dates that occur before it.  That"
		withDates: {1997 -> {'September' -> #(4). 'October' -> #(7). 'November' -> #(6)} }.	"causes me to have September 10 in the set list since the first TU and WE were not in the list"