testing
testParseString
	| string value |
	string := 'test me!'.
	value := String fromICalString: string.
	self assert: string = value asICalString.
	
	string := '":\\\,\;\n'.
	value := String fromICalString: string.
	self assert: value = '":\,;
'.
	self assert: string = value asICalString