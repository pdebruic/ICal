testing
testMontly

	self testRule: 'FREQ=MONTHLY;COUNT=10;BYDAY=1FR'
		startingAt: (DateAndTime fromString: '1997-09-05T09:00:00')
		withDates: {
			1997 ->
				{'September' -> #(5). 'October' -> #(3).
				'November' -> #(7). 'December' -> #(5). }.
			1998 ->
				{'January' -> #(2). 'February' -> #(6). 'March' -> #(6).
				'April' -> #(3). 'May' -> #(1). 'June' -> #(5) } }.

	self testRule: 'FREQ=MONTHLY;UNTIL=19971224T000000Z;BYDAY=1FR'
		startingAt: (DateAndTime fromString: '1997-09-05T09:00:00')
		withDates: {1997 -> {'September' -> #(5). 'October' -> #(3). 
			'November' -> #(7). 'December' -> #(5) } }.

	self testRule: 'FREQ=MONTHLY;INTERVAL=2;COUNT=10;BYDAY=1SU,-1SU'
		startingAt: (DateAndTime fromString: '1997-09-07T09:00:00')
		withDates: {
			1997 -> {'September' -> #(7 28). 'November' -> #(2 30). }.
			1998 -> {'January' -> #(4 25). 'March' -> #(1 29).
				'May' -> #(3 31) } }.

	self testRule: 'FREQ=MONTHLY;COUNT=6;BYDAY=-2MO'
		startingAt: (DateAndTime fromString: '1997-09-22T09:00:00')
		withDates: {
			1997 ->
				{'September' -> #(22). 'October' -> #(20).
				'November' -> #(17). 'December' -> #(22) }.
			1998 ->
				{'January' -> #(19). 'February' -> #(16) } }.

	self testRule: 'FREQ=MONTHLY;BYMONTHDAY=-3'
		startingAt: (DateAndTime fromString: '1997-09-28T09:00:00')
		take: 6
		withDates: {
			1997 ->
				{'September' -> #(28). 'October' -> #(29).
				'November' -> #(28). 'December' -> #(29). }.
			1998 -> {'January' -> #(29). 'February' -> #(26) } }.

	self testRule: 'FREQ=MONTHLY;COUNT=10;BYMONTHDAY=2,15'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		withDates: {
			1997 ->
				{'September' -> #(2 15). 'October' -> #(2 15).
				'November' -> #(2 15). 'December' -> #(2 15). }.
			1998 -> {'January' -> #(2 15) } }.

	self testRule: 'FREQ=MONTHLY;COUNT=10;BYMONTHDAY=1,-1'
		startingAt: (DateAndTime fromString: '1997-09-30T09:00:00')
		withDates: {
			1997 ->
				{'September' -> #(30). 'October' -> #(1 31).
				'November' -> #(1 30). 'December' -> #(1 31). }.
			1998 -> {'January' -> #(1 31). 'February' -> #(1) } }.

	self testRule: 'FREQ=MONTHLY;INTERVAL=18;COUNT=10;BYMONTHDAY=10,11,12,13,14,15'
		startingAt: (DateAndTime fromString: '1997-09-10T09:00:00')
		withDates: {1997 -> {'September' -> (10 to: 15) }. 1999 -> {'March' -> (10 to: 13) } }.

	self testRule: 'FREQ=MONTHLY;INTERVAL=2;BYDAY=TU'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 18
		withDates:
			{1997 -> {'September' -> (2 to: 30 by: 7). 'November' -> (4 to: 25 by: 7) }.
			1998 -> {'January' -> (6 to: 27 by: 7). 'March' -> (3 to: 31 by: 7) } }.

	self testRule: 'FREQ=MONTHLY;BYDAY=FR;BYMONTHDAY=13'
		startingAt: (DateAndTime fromString: '1997-09-02T09:00:00')
		take: 5
		withDates:
			{1998 -> {'February' -> #(13). 'March' -> #(13). 'November' -> #(13) }.
			1999 -> {'August' -> #(13) }. 2000 -> {'October' -> #(13) } }.

	self testRule: 'FREQ=MONTHLY;BYDAY=SA;BYMONTHDAY=7,8,9,10,11,12,13'
		startingAt: (DateAndTime fromString: '1997-09-13T09:00:00')
		take: 10
		withDates:
			{1997 -> {'September' -> #(13). 'October' -> #(11).
				'November' -> #(8). 'December' -> #(13) }.
			1998 -> {'January' -> #(10). 'February' -> #(7).
				'March' -> #(7). 'April' -> #(11).
				'May' -> #(9). 'June' -> #(13) } }.