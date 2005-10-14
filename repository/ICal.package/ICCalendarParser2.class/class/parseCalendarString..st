instance creation
parseCalendarString: aString
	^self parseCalendarStream: (ReadStream on: aString).