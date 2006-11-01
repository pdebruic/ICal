*ICal
fromICalString: aString
	| date time |
	date := Date fromICalString: (aString first: 8).
	^aString size >= 15
		ifTrue: [
			time := Time fromICalString: (aString allButFirst: 9).
			self date: date time: time ]
		ifFalse: [ date ]