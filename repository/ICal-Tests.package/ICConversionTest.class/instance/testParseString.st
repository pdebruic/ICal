testing
testParseString
	| string value |
	string := 'test me!'.
	value := String fromICalString: string parameters: Dictionary new.
	self assert: string = value asICalString.
	
	string := '":\\\,\;\n'.
	value := String fromICalString: string parameters: Dictionary new.
	self assert: value = '":\,;
'.
	self assert: string = value asICalString