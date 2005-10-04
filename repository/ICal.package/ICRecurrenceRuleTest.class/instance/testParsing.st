testing
testParsing
	| string rule |
	string := 'FREQ=MONTHLY;BYDAY=MO,TU,WE,TH,FR;BYSETPOS=-1'.
	rule := ICRecurrenceRule fromICalString: string.
	self assert: string = rule asICalString