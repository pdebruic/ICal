testing
testParseScaledDecimal
	| decimal string |
	string := '-3.14'.
	decimal := ScaledDecimal fromICalString: string.
	self assert: string = decimal asICalString.
	self assert: decimal = -3.14s2.
	string := '1.333'.
	decimal := ScaledDecimal fromICalString: string.
	self assert: string = decimal asICalString.
	self assert: decimal = 1.333s3