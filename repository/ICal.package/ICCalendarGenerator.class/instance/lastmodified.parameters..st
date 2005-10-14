processing-properties
lastmodified: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: DateAndTime iCalType.
	self tempComponent lastModified: value