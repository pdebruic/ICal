testing
testParseTime
	| string time |
	string := '10:22:00'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 00).

	string := '102200'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 00).

	string := '10:22:00.33'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 00 nanoSecond: 330000000).

	string := '10:22:00.33Z'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 00 nanoSecond: 330000000).

	string := '10:22:33'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 33).

	string := '10:22:00-08:00'.
	time := Time fromVCardString: string.
	self assert: time = (Time hour: 10 minute: 22 second: 00).