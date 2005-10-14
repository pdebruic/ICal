processing-properties
due: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: DateAndTime iCalType.
	self tempComponent due: value