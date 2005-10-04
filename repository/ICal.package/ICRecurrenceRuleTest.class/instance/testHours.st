testing
testHours
	| rule expected |
	rule := ICRecurrenceRule frequency: 'MONTHLY'.
	
	rule addHour: 5.	
	expected := 'FREQ=MONTHLY;BYHOUR=5'.
	self assert: expected = rule asICalString.
	
	rule addHour: 15.	
	expected := 'FREQ=MONTHLY;BYHOUR=5,15'.
	self assert: expected = rule asICalString.
	