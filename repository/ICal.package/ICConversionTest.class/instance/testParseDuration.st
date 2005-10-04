testing
testParseDuration
	| duration string |
	string := 'P15DT5H0M20S'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration days: 15 hours: 5 minutes: 0 seconds: 20).
	
	string := 'P7W'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration weeks: 7)