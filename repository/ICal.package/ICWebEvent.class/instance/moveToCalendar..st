as yet unclassified
moveToCalendar: aCalendar 
	calendar removeEvent: event.
	aCalendar addEvent: event.
	calendar := aCalendar.
	color := parent app calendars at: calendar