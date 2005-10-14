processing-properties
rrule: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: ICRecurrenceRule iCalType.
	self tempComponent recurrenceRule: value