private
addCalendarWithSummary: aString 
	calendars add: ((ICCalendar new)
				summary: aString;
				yourself)