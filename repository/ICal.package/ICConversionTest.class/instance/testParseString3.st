testing
testParseString3
	| string value |
	ICCalendarVersion
		use: 1.0
		during: [
			string := '123 Winding Way=0D=0A=' , String crlf ,
' Any Town, CA 12345=0D=0A=' , String crlf ,
' USA'.
			value := String fromICalString: (ICCalendarHandParser new unfold: string).
			self assert: value =
'123 Winding Way
Any Town, CA 12345
USA'.
			self assert: value asICalString = string ]