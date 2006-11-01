testing
testParseTimeUtc
	| string time |
	string := '123456Z'.
	time := Time fromICalString: string.
	
	self assert: string = time asICalUtcString.
	self assert: time = (Time hour: 12 minute: 34 second: 56)