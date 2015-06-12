testing
testParseUrl
	| url string |
	string := 'mailto:mouse@squeakfoundation.org'.
	url := ICConversion urlClass fromICalString: string.
	self assert: string  = url asICalString.
		
	string := 'http://host1.com/my-report.txt'.
	url := ICConversion urlClass fromICalString: string.
	self assert: string  = url asICalString.
	