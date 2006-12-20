testing
testParseStringOldEncoding
	| string value |
	ICCalendarVersion
		use: 1.0
		during: [
			string := 'Bar Street 99=0AFootown 12345=0AFooland'.
			value := String fromICalString: string.
			self assert: value =
'Bar Street 99
Footown 12345
Fooland'.
			self assert: value asICalString = 'Bar Street 99=0D=0AFootown 12345=0D=0AFooland' ]