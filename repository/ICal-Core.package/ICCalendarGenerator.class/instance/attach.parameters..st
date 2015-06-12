processing-properties
attach: aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: self urlClass iCalType.
	self activeComponent addAttachment: value