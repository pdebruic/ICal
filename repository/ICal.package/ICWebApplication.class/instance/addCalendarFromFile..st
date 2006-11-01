adding
addCalendarFromFile: aFile 
	| c |
	c := ICCalendarHandParser parseCalendarString: aFile contents.
	self class addCalendar: c.
	displayedCalendars add: c.
	calendarList addCalendar: c