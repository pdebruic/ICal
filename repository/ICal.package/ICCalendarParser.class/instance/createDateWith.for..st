converting
createDateWith: aClass for: aString
	| date time |
	time := Time midnight.
	
	date := Date year: (aString first: 4) asInteger
	     month: (aString copyFrom: 5 to: 6) asInteger
	     day: (aString copyFrom: 7 to: 8) asInteger.
	
	aString size > 8 ifTrue: [
		time := Time hour: (aString copyFrom: 10 to: 11) asInteger
		      minute: (aString copyFrom: 12 to: 13) asInteger
		      second: (aString copyFrom: 14 to: 15) asInteger.
	].

	^aClass date: date time: time.