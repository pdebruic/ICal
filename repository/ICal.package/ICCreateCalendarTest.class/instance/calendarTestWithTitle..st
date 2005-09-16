as yet unclassified
calendarTestWithTitle: aString 
	| newCalendar |
	newCalendar := calendars detect: [:each | each title = aString]
				ifNone: [nil].
	self deny: newCalendar isNil.
	self assert: newCalendar class = ICCalendar.
	self assert: newCalendar categories size >= 2