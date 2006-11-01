testing
testDuration
	| duration |
	duration := Duration days: 15 hours: 5 minutes: 0 seconds: 20.
	self assert: 'P15DT5H0M20S'  = duration asICalString.
	
	duration := Duration weeks: 7.
	self assert: 'P7W'  = duration asICalString.