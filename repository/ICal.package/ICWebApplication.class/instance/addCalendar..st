adding
addCalendar: calendar 
	| id |
	id:= 1.
	self
		addCalendar: calendar
		id: id
		color: (self calendars at: calendar)