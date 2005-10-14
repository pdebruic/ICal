processing-properties
dtend: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: DateAndTime iCalType.
	self tempComponent end: value