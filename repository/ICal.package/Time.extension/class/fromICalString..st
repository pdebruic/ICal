*iCal
fromICalString: aString
	^self
		hour: (aString first: 2) asInteger
		minute: (aString copyFrom: 3 to: 4) asInteger
		second: (aString copyFrom: 5 to: 6) asInteger.