testing
testTime
	| time |
	time := Time hour: 10 minute: 22 second: 00.
	self assert: time asVCardString = '10:22:00'.

	time := Time hour: 10 minute: 22 second: 00 nanoSecond: 330000000.
	self assert: time asVCardString = '10:22:00.33'.

	time :=Time hour: 10 minute: 22 second: 33.
	self assert: time asVCardString = '10:22:33'.
