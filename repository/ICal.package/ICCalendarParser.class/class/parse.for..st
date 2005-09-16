instance creation
parse: aString for: aCalendar 
	| parser |
	parser := self on: (ReadStream on: aString).
	parser calendar: aCalendar.
	parser parse.
	^parser