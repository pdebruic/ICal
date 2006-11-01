testing
testParseDuration
	| duration string |
	string := 'P15DT5H0M20S'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration days: 15 hours: 5 minutes: 0 seconds: 20).
	
	string := '-P15DT5H0M20S'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration days: 15 hours: 5 minutes: 0 seconds: 20) negated.
	
	string := 'P7W'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration weeks: 7).
	
	string := '-P7W'.
	duration := Duration fromICalString: string.
	self assert: string  = duration asICalString.
	self assert: duration = (Duration weeks: 7 negated).
	self assert: duration = (Duration weeks: 7) negated.
	
	string := 'PT5M'.
	duration := Duration fromICalString: string.
	self assert: 'PT0H5M0S'  = duration asICalString.
	self assert: duration = 5 minutes.
	
	string := '-PT5M'.
	duration := Duration fromICalString: string.
	self assert: '-PT0H5M0S'  = duration asICalString.
	self assert: duration = 5 minutes negated.
	self assert: duration = 5 negated minutes.
	
	self assert: (Duration fromICalString: 'PT0H5M0S') = (Duration fromICalString: 'PT5M').