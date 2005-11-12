instance creation
parseVCardFile: aPath
	^self parseVCardStream: (FileStream readOnlyFileNamed: aPath)