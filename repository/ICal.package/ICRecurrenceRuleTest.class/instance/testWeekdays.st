testing
testWeekdays
	| rule expected |
	rule := ICRecurrenceRule frequency: 'MONTHLY'.
	
	rule addWeekday: 'MO'.	
	expected := 'FREQ=MONTHLY;BYDAY=MO'.
	self assert: expected = rule asICalString.
	
	rule addWeekday: 'TU' occurrence: 2.	
	expected := 'FREQ=MONTHLY;BYDAY=MO,2TU'.
	self assert: expected = rule asICalString.
	
	rule addWeekday: 'WE' occurrence: -5.	
	expected := 'FREQ=MONTHLY;BYDAY=MO,2TU,-5WE'.
	self assert: expected = rule asICalString.
	