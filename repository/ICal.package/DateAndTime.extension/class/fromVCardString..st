*ICal
fromVCardString: aString
	| date time |
	date := Date fromVCardString: (aString copyUpTo: $T).
	^(aString includes: $T)
		ifTrue: [
			time := Time fromVCardString: (aString copyAfter: $T).
			self date: date time: time ]
		ifFalse: [ date ]