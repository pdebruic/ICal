instance creation
parseVCardString: aString
	^self parseVCardStream: (ReadStream on: aString)