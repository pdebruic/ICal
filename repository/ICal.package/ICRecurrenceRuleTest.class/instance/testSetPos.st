testing
testSetPos
	"BUG: BYSETPOS not implimented atm"
"	self testRule: 'FREQ=MONTHLY;COUNT=3;BYDAY=TU,WE,TH;BYSETPOS=3'
		startingAt: (DateAndTime fromString: '1997-09-04T09:00:00')
		withDates: {1997 -> {'September' -> #(4). 'October' -> #(7). 'November' -> #(6)} }.

	self testRule: 'FREQ=MONTHLY;BYDAY=MO,TU,WE,TH,FR;BYSETPOS=-2'
		startingAt: (DateAndTime fromString: '1997-09-29T09:00:00')
		take: 7
		withDates: {
			1997 -> {'September' -> #(29). 'October' -> #(30).
				'November' -> #(27). 'December' -> #(30) }.
			1998 -> {'January' -> #(29). 'February' -> #(26). 'March' -> #(30) } } "