processing-properties
attach: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: Url iCalType.
	self activeComponent addAttachment: value