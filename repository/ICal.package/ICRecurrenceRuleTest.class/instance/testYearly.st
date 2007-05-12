testing
testYearly

	self testRule: 'FREQ=YEARLY;UNTIL=20000131T090000Z;BYMONTH=1;BYDAY=SU,MO,TU,WE,TH,FR,SA'
		startingAt: (DateAndTime fromString: '1998-01-01T09:00:00')
		withDates: {1998 -> {'January' -> (1 to: 31)}. 1999 -> {'January' -> (1 to: 31)}. 2000 -> {'January' -> (1 to: 31) } }.

	self testRule: 'FREQ=YEARLY;COUNT=10;BYMONTH=6,7'
		startingAt: (DateAndTime fromString: '1997-06-10T09:00:00')
		withDates: {
			1997 -> {'June' -> #(10). 'July' -> #(10) }. 1998 -> {'June' -> #(10). 'July' -> #(10) }.
			1999 -> {'June' -> #(10). 'July' -> #(10) }. 2000 -> {'June' -> #(10). 'July' -> #(10) }.
			2001 -> {'June' -> #(10). 'July' -> #(10) } }.

	self testRule: 'FREQ=YEARLY;INTERVAL=2;COUNT=10;BYMONTH=1,2,3'
		startingAt: (DateAndTime fromString: '1997-03-10T09:00:00')
		withDates: {
			1997 -> {'March' -> #(10) }.
			1999 -> {'January' -> #(10). 'February' -> #(10). 'March' -> #(10) }.
			2001 -> {'January' -> #(10). 'February' -> #(10). 'March' -> #(10) }.
			2003 -> {'January' -> #(10). 'February' -> #(10). 'March' -> #(10) } }.

	self testRule: 'FREQ=YEARLY;INTERVAL=3;COUNT=10;BYYEARDAY=1,100,200'
		startingAt: (DateAndTime fromString: '1997-01-01T09:00:00')
		withDates: {
			1997 -> {'January' -> #(1). 'April' -> #(10). 'July' -> #(19) }.
			2000 -> {'January' -> #(1). 'April' -> #(9). 'July' -> #(18) }.
			2003 -> {'January' -> #(1). 'April' -> #(10). 'July' -> #(19) }.
			2006 -> {'January' -> #(1) } }.

	self testRule: 'FREQ=YEARLY;BYDAY=20MO'
		startingAt: (DateAndTime fromString: '1997-05-19T09:00:00')
		take: 3
		withDates: {1997 -> {'May' -> #(19)}. 1998 -> {'May' -> #(18)}. 1999 -> {'May' -> #(17)} }.

	self testRule: 'FREQ=YEARLY;BYWEEKNO=20;BYDAY=MO'
		startingAt: (DateAndTime fromString: '1997-05-12T09:00:00')
		take: 3
		withDates: {1997 -> {'May' -> #(12)}. 1998 -> {'May' -> #(11)}. 1999 -> {'May' -> #(17)} }.

	self testRule: 'FREQ=YEARLY;BYMONTH=3;BYDAY=TH'
		startingAt: (DateAndTime fromString: '1997-03-13T09:00:00')
		take: 11
		withDates: {
			1997 -> {'March' -> #(13 20 27)}.
			1998 -> {'March' -> #(5 12 19 26)}.
			1999 -> {'March' -> #(4 11 18 25)} }.

	self testRule: 'FREQ=YEARLY;BYDAY=TH;BYMONTH=6,7,8'
		startingAt: (DateAndTime fromString: '1997-06-05T09:00:00')
		take: 39
		withDates: {
			1997 -> {'June' -> (5 to: 26 by: 7). 'July' -> (3 to: 31 by: 7). 'August' -> (7 to: 28 by: 7)}.
			1998 -> {'June' -> (4 to: 25 by: 7). 'July' -> (2 to: 30 by: 7). 'August' -> (6 to: 27 by: 7)}.
			1999 -> {'June' -> (3 to: 24 by: 7). 'July' -> (1 to: 29 by: 7). 'August' -> (5 to: 26 by: 7)} }.

	self testRule: 'FREQ=YEARLY;INTERVAL=4;BYMONTH=11;BYDAY=TU;BYMONTHDAY=2,3,4,5,6,7,8'
		startingAt: (DateAndTime fromString: '1996-11-05T09:00:00')
		take: 3
		withDates: {1996 -> {'November' -> #(5) }. 2000 -> {'November' -> #(7)}. 2004 -> {'November' -> #(2)} }.