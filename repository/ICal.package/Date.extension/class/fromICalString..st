*ICal
fromICalString: aString
	^self
		year: (aString first: 4) asInteger
	     month: (aString copyFrom: 5 to: 6) asInteger
	     day: (aString copyFrom: 7 to: 8) asInteger.