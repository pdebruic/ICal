testing
testParseTime
	| string time |
	string := '123456'.
	time := Time fromICalString: string.
	
	self assert: string = time asICalString.
	self assert: time = (Time hour: 12 minute: 34 second: 56)