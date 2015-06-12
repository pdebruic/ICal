processing-properties
url:  aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: self urlClass iCalType.
	self currentCard url: value