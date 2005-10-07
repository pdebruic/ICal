testing
testUser
	| newCalendar |
	newCalendar := calendars 
				detect: [:each | each summary = 'veriveri''s Calendar']
				ifNone: [nil].
	self deny: newCalendar isNil.
	self assert: newCalendar class = ICCalendar.
	self deny: newCalendar users isEmptyOrNil.
	self assert: newCalendar users anyOne = user