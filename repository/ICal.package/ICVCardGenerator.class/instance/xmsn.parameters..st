processing-properties
xmsn:  aString parameters: aDictionary
	| value |
	value := self createInstantMessageId: aString parameters: aDictionary.
	self currentCard addMsnid: value