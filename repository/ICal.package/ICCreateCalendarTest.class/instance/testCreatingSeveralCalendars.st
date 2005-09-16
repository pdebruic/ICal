tests
testCreatingSeveralCalendars
	self addCalendarWithTitle: 'new Calendar 1'.
	self addCalendarWithTitle: 'new Calendar 2'.
	self addCalendarWithTitle: 'new Calendar 3'.
	
	self calendarTestWithTitle: 'new Calendar 1'.
     self calendarTestWithTitle: 'new Calendar 2'.
     self calendarTestWithTitle: 'new Calendar 3'.