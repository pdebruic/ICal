processing-properties
url:  aString parameters: aDictionary
	| value |
	value := self createValue: aString parameters: aDictionary default: Url iCalType.
	self currentCard url: value