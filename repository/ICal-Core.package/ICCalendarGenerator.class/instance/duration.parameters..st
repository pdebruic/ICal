processing-properties
duration: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: ICConversion durationClass iCalType.
	self activeComponent duration: value