private
calendarTestWithSummary: aString 
	| newCalendar |
	newCalendar := calendars detect: [:each | each summary = aString]
				ifNone: [nil].
	
	self deny: newCalendar isNil.
	self assert: newCalendar class = ICCalendar.
	self assert: newCalendar summary = aString.
	self assert: newCalendar categories isEmpty