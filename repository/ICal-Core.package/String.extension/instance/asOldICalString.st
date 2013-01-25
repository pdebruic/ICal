*ICal-Core
asOldICalString
	^self replaceStrings: (Array
		with: ',' -> '\,'
		with: ';' -> '\;'
		with: '\' -> '\\'
		with: (String with: Character cr) -> '=0D=0A')