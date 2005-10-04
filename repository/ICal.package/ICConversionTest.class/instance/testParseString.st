testing
testParseString
	| string value |
	string := 'test me!'.
	value := String fromICalString: string.
	self assert: string = value asICalString