processing-properties
xyahoo:  aString parameters: aDictionary
	| value |
	value := self createInstantMessageId: aString parameters: aDictionary.
	self currentCard addYahooid: value