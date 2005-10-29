testing
testParsing
	| string rule |
	string := 'FREQ=MONTHLY;BYDAY=TU,MO,TH,WE,FR;BYSETPOS=-1'.
	rule := ICRecurrenceRule fromICalString: string.
	self assert: string = rule asICalString