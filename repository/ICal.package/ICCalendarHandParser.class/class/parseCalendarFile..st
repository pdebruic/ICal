instance creation
parseCalendarFile: aPath
	^self parseCalendarStream: (FileStream readOnlyFileNamed: aPath)