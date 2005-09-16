tests
testUser
	| root newCalendar |
	self deny: SW2Kernel instances isEmpty.
	root := SW2Kernel instances first root.
	self deny: root isNil.
	newCalendar := calendars 
				detect: [:each | each title = 'veriveri''s Calendar']
				ifNone: [nil].
	self deny: newCalendar isNil.
	self assert: newCalendar class = ICCalendar.
	self assert: newCalendar categories size >= 2.
	self assert: newCalendar user notNil.
	self assert: newCalendar user = user