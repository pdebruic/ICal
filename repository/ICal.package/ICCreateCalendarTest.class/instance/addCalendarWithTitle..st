as yet unclassified
addCalendarWithTitle: aString 
	calendars add: ((ICCalendar new)
				title: aString;
				yourself)