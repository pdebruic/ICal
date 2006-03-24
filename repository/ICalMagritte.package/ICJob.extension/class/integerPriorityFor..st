*ICalMagritte
integerPriorityFor: aString
	^self textualPriorityDictionary
		keyAtValue: aString
		ifAbsent: [ aString ]