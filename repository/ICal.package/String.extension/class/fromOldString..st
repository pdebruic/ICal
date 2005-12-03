*ICal
fromOldString: aString
	^aString replaceStrings: (Array
				with: '=0D=0A' -> (String with: Character cr)
				with: '\\' -> '\'
				with: '=0D' -> (String with: Character cr)
				with: '=0A' -> (String with: Character cr)
				with: '\,' -> ','
				with: '\;' -> ';')