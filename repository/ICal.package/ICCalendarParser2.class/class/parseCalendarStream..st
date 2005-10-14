instance creation
parseCalendarStream: aStream
	| parser |
	parser := self on: aStream.
	parser generator: ICCalendarGenerator new.
	parser parse.
	^parser product