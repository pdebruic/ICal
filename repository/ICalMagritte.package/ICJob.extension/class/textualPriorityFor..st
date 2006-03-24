*ICalMagritte
textualPriorityFor: anInteger
	^self textualPriorityDictionary
		at: anInteger
		ifAbsent: [ anInteger asString ]